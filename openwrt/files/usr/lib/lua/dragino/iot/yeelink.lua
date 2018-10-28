#! /usr/bin/env lua
--[[

    yeelink.lua - Lua Script to communicate with yeelink service 
	ver: 0.1

    Copyright (C) 2014 Dragino Technology Co., Limited

    Package required: luci-lib-json,luasocket

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]]--

local modname = ...
local M = {}
_G[modname] = M

local json = require 'luci.json'
local http = require 'socket.http'
local ltn12 = require 'ltn12'
local print,tonumber,tostring,pairs,type = print,tonumber,tostring,pairs,type
local table = table
local uci = require("luci.model.uci")

local debug = 2

local utility = require 'dragino.utility'

setfenv(1,M)

uci = uci.cursor()
local TOP_URL = 'http://api.yeelink.net/v1.0/'
--local debug = service.debug
--debug = tonumber(debug)
local logger = utility.logger


--upload single data to yeelink
--@param ak ApiKey
--@param device_id device id from yeelink
--@param sensor_id sensor id from yeelink
--@param value a table contain the value. format is as below:
--@@@@	numercial:	value={value='78'}
--@@@@	gps:		value={value={lat='35.4567',lng='46.1234',speed='98.2',offset='yes'}}
--@@@@				value={value={lat='35.4567',lng='46.1234',speed='98.2'}
--@@@@	general:	value={key='12323243434',value={string = 'abcdacasldkf09sfj'}}
--@@@@				value={key='12323243434',value={string1 = 'string1_content',string2='string2_content'}}
-------------------------------------------
--@return code return code
function post_data(ak, device_id, sensor_id, value)
	local chunks = {}
	if value == nil then return end
	local body = json.encode(value)
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. 'device/'..device_id..'/sensor/'..sensor_id..'/datapoints',
			method = 'POST',
			headers = {
				["Connection"] = "Keep-Alive",
				["Content-Length"] = tostring(body:len()),
				["U-ApiKey"] = ak,
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)

		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			logger('yeelink: insert_data: chunks[1]='..chunks[1])
		end
		if ret then logger('yeelink: insert_data:  ret='..ret) end
		logger('yeelink: insert_data: body='..body)
		logger('yeelink: insert_data: return code='..code)
	end

	return code
end

--upload all sensor data to yeelink
--@param ak ApiKey
--@param device_id device id from yeelink
--@param value a table contain the value.
function post_all_channels(ak,device_id)
	local valuetable = utility.get_channel_value()
	uci:foreach("iot-service","channels",
		function (section)
			if section["class"] == "sensor" then   -- confirmm this is a sensor
				for k,v in pairs(valuetable) do     -- get value from sensor dir
					if section["localchannel"] == k then
						if section["datatype"] == 'numercial' then
							section["value"] = {value=v}
						end
						post_data(ak, device_id, section["sensorid"], section["value"])
					end

				end
			end
		end  
	)
end


--Get data from yeelink
--@param ak ApiKey
--@param device_id device id from yeelink
--@param sensor_id sensor id from yeelink
-------------------------------------------
--@return code return code, 200 if success
--@return result table. Format is as below if success.
--@@@@	numercial:	result={timestamp,value}
--@@@@	gps:		result={timestamp,value_table}
--@@@@	general:	result={timestamp,key,value_table}
function get_data(ak, device_id, sensor_id)
	if ak == nil or device_id==nil or sensor_id == nil then return end
	local chunks = {}
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. 'device/'..device_id..'/sensor/'..sensor_id..'/datapoints',
			method = 'GET',
			headers = {
				["Connection"] = "Keep-Alive",
				["U-ApiKey"] = ak,
			},
			sink = ltn12.sink.table(chunks)

		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			logger('yeelink: get_data: chunks[1]='..chunks[1])
		end
		if ret then logger('yeelink: get_data:  ret='..ret) end
		logger('yeelink: get_data: return code='..code)
	end
	local result = json.decode(chunks[1])	
	return code, result
end



--Get all actuato data from yeelink
--@param ak ApiKey
--@param device_id device id from yeelink
--@param value a table contain the value.
function get_all_actuators_from_server(ak,device_id)
	uci:foreach("iot-service","channels",
		function (section)
			if section["class"] == "actuator" and section["sensorid"] then   -- confirm this is an actuator
					local _,valuetable = get_data(ak,device_id,section["sensorid"])
					if type(valuetable) == 'table' then
						if section["datatype"] == 'numercial' then
							utility.set_sensor_data(section["localchannel"],valuetable.value)
						end
					end
			end
		end  
	)
end


return M