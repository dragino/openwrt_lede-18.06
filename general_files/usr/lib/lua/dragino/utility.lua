#! /usr/bin/env lua
--[[

    utility.lua - Useful lua utility collection 

    Copyright (C) 2014 Dragino Technology Co., Limited

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]]--

local modname = ...
local M = {}
_G[modname] = M


local type,assert,print,pairs,string,io,os,table,tonumber = type,assert,print,pairs,string,io,os,table,tonumber

local uci = require("luci.model.uci")
local util = require("luci.util")
local luci_fs = require("nixio.fs")

setfenv(1,M)

uci = uci.cursor()
local uartmode = uci:get("iot","general","uartmode")
local SENSOR_DIR = '/var/iot/channels/'

--dump a lua table
function tabledump(t,indent)
	-- if nil==t then return end
	assert(type(t)=='table', "Wrong input type. Expected table, got "..type(t))
	local indent = indent or 0
	for k,v in pairs(t) do
		if type(v)=="table" then
			print(string.rep(" ",indent)..k.."=>")
			tabledump(v, indent+4)
		else
			print(string.rep(" ",indent) .. k  .. "=>", v)
		end
	end
end

--Get Cellular Info
--@return cellular info
function getCellularInfo()
	if luci_fs.access("/var/cellular/info") == nil then
		return
	end
	reg_status_table={['0']='Not registered',['1']='Registered,Home Network',['2']='Searching',['3']='Registration denied',
					['4']='Unknown',['5']='Registered,Roaming'}
	tech_table={['0']='GSM',['2']='UTRAN',['3']='GSM/EGPRS',
					['4']='UTRAN W/HSDPA',['5']='UTRAN W/HSUPA',['6']='UTRAN W/HSDPA and HSUPA'}
	band_table={['1']='GSM 900',['2']='GSM 1800',['4']='GSM 850', ['8']='GSM 1900', ['16']='WCDMA 2100',
					['32']='WCDMA 1900',['64']='WCDMA 850',['128']='WCDMA 900',['256']='WCDMA 800'}

	for line in io.lines('/var/cellular/info') do 
		if string.match(line,'QCCID: ') then 
			ICCID = string.match(line,'QCCID: (%d+)')  
		end
		if string.match(line,'IMEI=') then 
			IMEI = string.match(line,'IMEI=(%d+)')  
		end
		if string.match(line,'IMSI=') then 
			IMSI = string.match(line,'IMSI=(%d+)')  
		end
	end				
	for line in io.lines('/var/cellular/status') do 
		if string.match(line,'COPS:') then 
			operator,tech = string.match(line,'COPS:%s%d,%d,"(.+)",(%d)') 
			tech_type=tech_table[tech]			
		end
		if string.match(line,'CREG:') then 
			reg_code = string.match(line,'CREG:%s%d,(%d)') 
			reg_status=reg_status_table[reg_code]			
		end
		if string.match(line,'QGBAND:') then 
			band_code = string.match(line,'QGBAND:%s(%d+)')
			band=band_table[band_code]
		elseif string.match(line,'QNWINFO:') then
			band=string.match(line,'QNWINFO:%s(.+)')
		end	
		if string.match(line,'CSQ:') then 
			signal = tonumber(string.match(line,'CSQ:%s(%d+)'))
			if signal <= 10 then
				sig_Q = 'poor'
			elseif signal < 15 then
				sig_Q = 'normal'
			elseif signal >=15 and signal ~=99 then
				sig_Q = 'good'
			elseif signal == 99 then
				sig_Q = 'Not known or not detectable'
			end
		end	
	end
	return ICCID,IMEI,IMSI,operator,tech_type,reg_status,band,sig_Q
end


--Get Firmware Version
--@return f_version firmware version
--@return b_time build time
--@return h_version hardware version, Web_Model
function getVersion()
	for line in io.lines('/etc/banner') do 
		if string.match(line,'Version:[%s]+(.+)') then 
			f_version = string.match(line,'Version:[%s]+[%w%-_]+[%s]+(.+)')  
		end
		if string.match(line,'Build[%s]+(.+)') then 
			b_time = string.match(line,'Build[%s]+(.+)')  
		end
	end
	
	if uci:get("system","vendor","hostname") == "dragino" then
		h_version = util.trim(luci_fs.readfile("/var/iot/board"))
		if h_version == "LG01" then 
			h_version = "LG01N / OLG01N"
		elseif h_version == "LG02" then
			h_version = "LG02 / OLG02"
		elseif h_version == "LG08" or h_version == "LG08P" then
			local SN=util.exec('hexdump -v -e \'11/1 "%_p"\' -s $((0x908)) -n 11 /dev/mtd6') 
			if string.match(SN,'lps8') then
				h_version = "LPS8"
			else 
				h_version = "LG308"
			end
		else 
			h_version = "Dragino HE"
		end
	else 
		h_version = uci:get("system","vendor","web_model")
		f_version = h_version .. string.match(f_version,'(-.+)') 
	end
	return f_version,b_time,h_version
end

--log data to device
function logger(msg)
	if uartmode == "bridge" then
		print(msg)
	else 
		os.execute("logger ".. msg)
	end 
end

--Get USB Modem
--@return USB Manufacture, Vendor ID and Product ID
function getUSBInfo()
	local USB_INFO=util.exec('cat /sys/kernel/debug/usb/devices | grep -A 1 "P:  Vendor"')
	local start = string.find(USB_INFO,"Vendor=05c6")
	if start == nil 
        then 
            start = string.find(USB_INFO,"Vendor=2c7c")
    end
	if start == nil then return nil end
	u_man=string.match(USB_INFO,"Manufacturer=([%w%s%.%_]+[%w])",start)
	u_vid=string.match(USB_INFO,"Vendor=([%w]+)",start)
	u_pid=string.match(USB_INFO,"ProdID=([%w]+)",start)
	return u_man,u_vid,u_pid
end

--Retreive Sensor Values
--@return a sensor value table
function get_sensor_data()
  local valuetable = {}
  uci:foreach("sensor","channels",
    function (section)
	if section.class == 'sensor' and section.id and section.type and section.remoteID then
	  if luci_fs.isfile(SENSOR_DIR .. section[".name"]) then 
	    local value = util.trim(util.exec("tail -n 1 " .. SENSOR_DIR .. section[".name"]))
	    if value ~= nil and value ~= "" then
		section.value = value
		table.insert(valuetable,section)
	    end	
	  end
	end  
    end
  )
  return valuetable
end

--Set Sensor Values
--@Set a sensor value
function set_sensor_data(k,v)
	os.execute('echo '..v..' > '..SENSOR_DIR..k)
end

--Retreive Channels Values
--@return channel value table {channel1=value1,channel2=value2....} from sensor directory
function get_channels_valuetable()
	local valuetable = {}
	for file in luci_fs.dir(SENSOR_DIR) do 
		--if luci_fs.isfile(file) then 
			local value = util.trim(util.exec("tail -n 1 " .. SENSOR_DIR..file))
			if value ~= nil and value ~= "" then
				valuetable[file]=value
			end
		--end
	end
  return valuetable
end

--Retreive Value for a single channel
--@return single channel value and update time from sensor directory
function get_channel_value(channel_id)
	local channel_path = SENSOR_DIR..channel_id
	if luci_fs.isfile(channel_path) then 
		local value = util.trim(util.exec("tail -n 1 " .. channel_path))
		if value ~= nil and value ~= "" then
			return value, luci_fs.mtime(channel_path)
		end	
	end
	return nil
end

--Get All UART Channels
--@return uart channel table from sensor config
function get_uart_channel_names()
	local uart_channels = {}
	uci:foreach("sensor","channels",
		function (section)
			table.insert(uart_channels,section[".name"])
		end
	)
	return uart_channels
end


--Dispatch data to Sensor File base on a pattern
function Dispatch_Data_to_Sensor_Channel(raw,channel_table)
	if raw == nil or util.trim(raw) == '' then return end
	logger('Raw: ' .. raw)
	for k,v in pairs(channel_table) do
		local mat1 = string.match(raw,v.pattern) -- match valid data pattern from each Sensor
		if mat1 ~= nil then
			set_sensor_data(v['id'],mat1)
			logger('Store: ' .. v['id']..' '..mat1)
		end
	end
end

--Base64 encode and decode
function b64encode(source_str)  
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'  
    local s64 = ''  
    local str = source_str  
  
    while #str > 0 do  
        local bytes_num = 0  
        local buf = 0  
  
        for byte_cnt=1,3 do  
            buf = (buf * 256)  
            if #str > 0 then  
                buf = buf + string.byte(str, 1, 1)  
                str = string.sub(str, 2)  
                bytes_num = bytes_num + 1  
            end  
        end  
  
        for group_cnt=1,(bytes_num+1) do  
            local b64char = math.fmod(math.floor(buf/262144), 64) + 1  
            s64 = s64 .. string.sub(b64chars, b64char, b64char)  
            buf = buf * 64  
        end  
  
        for fill_cnt=1,(3-bytes_num) do  
            s64 = s64 .. '='  
        end  
    end  
  
    return s64  
end  
  
function b64decode(str64)  
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'  
    local temp={}  
    for i=1,64 do  
        temp[string.sub(b64chars,i,i)] = i  
    end  
    temp['=']=0  
    local str=""  
    for i=1,#str64,4 do  
        if i>#str64 then  
            break  
        end  
        local data = 0  
        local str_count=0  
        for j=0,3 do  
            local str1=string.sub(str64,i+j,i+j)  
            if not temp[str1] then  
                return  
            end  
            if temp[str1] < 1 then  
                data = data * 64  
            else  
                data = data * 64 + temp[str1]-1  
                str_count = str_count + 1  
            end  
        end  
        for j=16,0,-8 do  
            if str_count > 0 then  
                str=str..string.char(math.floor(data/math.pow(2,j)))  
                data=math.mod(data,math.pow(2,j))  
                str_count = str_count - 1  
            end  
        end  
    end  
  
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))  
    if last == 0 then  
        str = string.sub(str, 1, string.len(str) - 1)  
    end  
    return str  
end 


function hex2str(hex)
	--判断输入类型
	if (type(hex)~="string") then
		return nil,"hex2str invalid input type"
	end
	--拼接字符串
	local index=1
	local ret=""
	for index=1,hex:len() do
		ret=ret..string.format("%02X",hex:sub(index):byte())
	end
 
	return ret
end

function str2hex(str)
	--判断输入类型	
	if (type(str)~="string") then
	    return nil,"str2hex invalid input type"
	end
	--滤掉分隔符
	str=str:gsub("[%s%p]",""):upper()
	--检查内容是否合法
	if(str:find("[^0-9A-Fa-f]")~=nil) then
	    return nil,"str2hex invalid input content"
	end
	--检查字符串长度
	if(str:len()%2~=0) then
	    return nil,"str2hex invalid input lenth"
	end
	--拼接字符串
	local index=1
	local ret=""
	for index=1,str:len(),2 do
	    ret=ret..string.char(tonumber(str:sub(index,index+1),16))
	end
 
	return ret
end

return M
