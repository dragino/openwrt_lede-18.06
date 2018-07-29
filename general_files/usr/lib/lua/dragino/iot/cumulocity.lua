#! /usr/bin/env lua
--[[

    cumulocity.lua - Lua Script to communicate with cumulocity service 

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
local tostring, assert, pairs, string, print, io, mime, require, os, arg= tostring, assert, pairs, string, print, io, mime, require, os, arg
local tonumber = tonumber
local table = table
local uci = require("luci.model.uci")

local utility = require 'dragino.utility'

setfenv(1,M)

uci = uci.cursor()
local service = uci:get_all("iot","general")
local API_KEY = service.ApiKey
local TOP_URL = 'http://developer.cumulocity.com'
local CREDENTIALS = mime.b64(service.tenant .. "/" .. service.user .. ":" .. service.pass)
local debug=service.debug and tonumber(service.debug) or false
local opt = arg[1]


--Check if the device is registered by MAC, Return GlobalID if registered or "Unregistered" if not. 
--Code 200:	Success code, return Global ID
--Code 401:	Bad credentials code
--Code 404:	Not Found, Unregistered
function is_registered()
	local util = require("luci.util")
	local ix = util.exec("LANG=en ifconfig wlan0")
   	local mac = ix and ix:match("HWaddr ([^%s]+)")
	local chunks = {}
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/identity/externalIds/c8y_MAC/'..mac,
			method = 'GET',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.externalId+json",
				["Connection"] = "Keep-Alive",
			},
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: is_registered? external ID: ' .. mac .. ': chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: is_registered? external ID: ' .. mac .. ':  ret='..ret) end
		print('Cumulocity: is_registered? external ID: ' .. mac .. ': return code='..code)
	end

	if code == 200 then
		result = json.decode(chunks[1]).managedObject.id
	elseif code == 401 then
		result = "Bad credentials code"
	elseif code == 404 then
		result = "Unregistered"
	end
	return code, result
end


--Create Objects, Return code and result
--Code 201:	Success code
--Code 401:	Bad credentials code
function create_object()
	local chunks = {}
	local result
	local util = require("luci.util")
	local ix = util.exec("LANG=en ifconfig wlan0")
   	local mac = ix and ix:match("HWaddr ([^%s]+)")
	local DEVICE_NAME = service.DeviceName or "Dragino-"..mac
	local body = '{"c8y_IsDevice": {},"name":"' .. DEVICE_NAME .. '"}' 
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/inventory/managedObjects',
			method = 'POST',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.managedObject+json;ver=0.9",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: create_object(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: create_object():  ret='..ret) end
		print('Cumulocity: create_object(): return code='..code)
	end

	local result = (code == 201) and string.match(head.location,"managedObjects/(%d+)")

	if code == 401 then
		result = "Bad credentials code"
	end

	return code, result

end


--Get Objects, Return code and object table
--Code 200:	Success code
--Code 401:	Bad credentials code
function get_object(gid)
	local chunks = {}
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/inventory/managedObjects/'..gid,
			method = 'GET',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.managedObject+json;ver=0.9",
				["Connection"] = "Keep-Alive",
			},
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: get_object(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: get_object():  ret='..ret) end
		print('Cumulocity: get_object(): return code='..code)
	end

	if code == 200 then
		return code, json.decode(chunks[1])
	elseif code == 401 then
		result = "Bad credentials code"
	end

	return code, result

end


--Create ExternalID, Return code and result
--Code 201:	Success code
--Code 401:	Bad credentials code
function create_externalID(GlobalID)
	local chunks = {}
	local util = require("luci.util")
	local ix = util.exec("LANG=en ifconfig wlan0")
   	local mac = ix and ix:match("HWaddr ([^%s]+)")
	local body = '{  "type" : "c8y_MAC","externalId" : "' .. mac .. '"}' 
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/identity/globalIds/'..GlobalID..'/externalIds',
			method = 'POST',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.externalId+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: create_externalID(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: create_externalID():  ret='..ret) end
		print('Cumulocity: create_externalID(): return code='..code)
	end

	if code == 401 then
		return code ,"Bad credentials code"
	end

	return code
end


--Add device to a group
--Code 201:	Success added
--Code 401:	Bad credentials code
--Code 403:	Access is denied
function add_to_group(GlobalID,GroupID)
	local chunks = {}
	local body = '{"managedObject" : { "self" :"' ..TOP_URL ..'/inventory/managedObjects/'..GlobalID..'"}}' 
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/inventory/managedObjects/'..GroupID..'/childAssets',
			method = 'POST',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.managedObjectReference+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: add_to_group(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: add_to_group():  ret='..ret) end
		print('Cumulocity: add_to_group(): return code='..code)
	end

	if code == 201 then
		result="Success added to group"..GroupID
	elseif code == 401 then
		result = "Bad credentials code"
	elseif code == 403 then
		result = "Access is denied"
	end

	return code,result
end


--Update Measurement Types
--TypesString example: "Temperature,MotionSensor[,..]..[,..]"
--Code 200:	Success update measurement type
--Code 401:	Bad credentials code
function update_measurement_types(GlobalID,TypesString)
	local TypesTable ={}
	for w in string.gmatch(TypesString, "[%w%s_]+") do
       	table.insert(TypesTable,w)
     	end
	local chunks = {}
	local body = '{'
	for k,v in pairs(TypesTable) do
		body = body .. '"'..v ..'":{},'
	end
	body = body .. '"c8y_SupportedMeasurements": ' ..json.encode(TypesTable) ..'}' 
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/inventory/managedObjects/'..GlobalID,
			method = 'PUT',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.managedObject+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: update_measurement_types(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: update_measurement_types():  ret='..ret) end
		print('Cumulocity: update_measurement_types(): body='..body)
		print('Cumulocity: update_measurement_types(): return code='..code)
	end

	if code == 201 then
		result = "Success update measurement type"..json.encode(TypesTable)
	elseif code == 401 then
		result = "Bad credentials code"
	end

	return code,result
end


--POST Measurement(s)
--ValueString single sensor example :  "Customize Measurement": { "Point": { "value": 200, "unit": "ml" }}
--ValueString multi sensor example : "Customize Measurement": { "Point": { "value": 200, "unit": "ml" }},"c8y_TemperatureSensor": { "T": { "value": 35, "unit": "C" }} 
--Code 201:	Success POST measurement
--Code 401:	Bad credentials code
--Code 500:	Internal Error
function post_measurements(GlobalID,ValueString,ValueType)
	local chunks = {}
	local current_time = os.date("%Y-%m-%dT%H:%M:%SZ",os.time())
	local vType
	vType = ValueType or "Dragino Reading" 
	local body = '{"time":"'..current_time..'",'
	body = body .. '"type" : "'..vType..'",'
	body = body .. '"source" : { "id":"' .. GlobalID .. '"},'
	body = body .. ValueString .. '}'
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/measurement/measurements',
			method = 'POST',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.measurement+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: post_measurements(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: post_measurements():  ret='..ret) end
		print('Cumulocity: post_measurements(): body='..body)
		print('Cumulocity: post_measurements(): return code='..code)
	end

	if code == 201 then
		result = "Success post measurement(s)"
	elseif code == 401 then
		result = "Bad credentials code"
	elseif code == 500 then
		result = "Internal Error, double check data value format. "
	end

	return code,result
end


--Delete A Device
--Code 204:	Success delete object
--Code 403:	Access is denied
function delete_device(GlobalID)
	local chunks = {}
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/inventory/managedObjects/'..GlobalID,
			method = 'DELETE',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.managedObject+json",
				["Connection"] = "Keep-Alive",
			},
			sink = ltn12.sink.table(chunks)
		}
	)
	if debug then 
		if chunks and chunks[1] then
			print('DEBUG: delete_device(): chunks[1]='..chunks[1])
		end
		if ret then print('DEBUG: Cumulocity: delete_device:  ret='..ret) end
		print('DEBUG: Cumulocity: delete_device:return code='..code)
		print('DEBUG: Cumulocity: delete_device: head='..json.encode(head))
	end

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: delete_device(): chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: delete_device():  ret='..ret) end
		print('Cumulocity: delete_device(): return code='..code)
	end

	if code == 204 then
		result = "Success delete device"..GlobalID
	elseif code == 401 then
		result = "Bad credentials code"
	elseif code == 403 then
		result = "Access is denied for object" .. GlobalID
	end

	return code,result
end


--Get active alarm for specify device  
--@param GlobalID Global ID 
--@return code return code
--@return result alarm table
function get_alarms(GlobalID)
	local chunks = {}
	local result
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/alarm/alarms?source=' .. GlobalID .. '&status=ACTIVE',
			method = 'GET',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.alarm+json",
				["Connection"] = "Keep-Alive",
			},
			sink = ltn12.sink.table(chunks)
		}
	)
	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: get_alarms  from ' .. GlobalID .. ': chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: get_alarms from ' .. GlobalID .. ':  ret='..ret) end
		print('Cumulocity: get_alarms from ' .. GlobalID .. ': return code='..code)
	end

	if code == 200 then
		result = json.decode(chunks[1]).alarms
	end
	return code, result
end


--Get Alarm ID by alarm type
--@param GlobalID Global ID
--@param aType Alarm Type
--@return AlarmID Alarm ID or 0
function get_alarm_by_type(GlobalID, aType)
	local c,t, AlarmID

	if debug >= 1 then 
		print('Cumulocity: get_alarms_by_type type:' ..aType..' GlobalID:' ..GlobalID)
	end

	c,t = get_alarms(GlobalID)
	if c == 200 then
		for _,v in pairs(t) do
			if v.type == aType then
				AlarmID = v.id
			end 
		end 
	end
	return AlarmID or 0
end



--Send an alarm
--@param GlobalID Global ID
--@param aType Alarm Type and Alarm Text
--@return code return code
--@return result Alarm ID if successful, else , return 0
function send_alarm(GlobalID,aType)
	local chunks = {}
	local current_time = os.date("%Y-%m-%dT%H:%M:%SZ",os.time())
	local body = '{"time":"'..current_time..'",'
	body = body .. '"type" : "'..aType..'",'
	body = body .. '"text" : "'..aType..'",'
	body = body .. '"source" : { "id":"' .. GlobalID .. '"},'
	body = body .. '"status": "ACTIVE",'
	body = body .. '"severity": "MAJOR"}'
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/alarm/alarms',
			method = 'POST',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.alarm+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)
	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: send_alarm to ' .. GlobalID .. ': chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: send_alarm to ' .. GlobalID .. ':  ret='..ret) end
		print('Cumulocity: send_alarm to ' .. GlobalID .. ': body='..body)
		print('Cumulocity: send_alarm to ' .. GlobalID .. ': return code='..code)
	end

	return string.match(head.location,"alarms/(%d+)") or 0
end



--Clear an alarm
--@param AlarmID Clear Alarm
--@return code return code
function clear_alarm(AlarmID)
	local chunks = {}
	local body = '{"status": "CLEARED"}'
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/alarm/alarms/'..AlarmID,
			method = 'PUT',
			headers = {
				["Authorization"] = "Basic " .. CREDENTIALS,
				["X-Cumulocity-Application-Key"] = API_KEY,
				["Content-Type"] = "application/vnd.com.nsn.cumulocity.alarm+json",
				["Content-Length"] = tostring(body:len()),
				["Connection"] = "Keep-Alive",
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)
		}
	)
	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			print('Cumulocity: clear_alarm: chunks[1]='..chunks[1])
		end
		if ret then print('Cumulocity: clear_alarm:  ret='..ret) end
		print('Cumulocity: clear_alarm: return code='..code)
	end

	return code
end


--Check if the device is already registered, if yes, return GlobalID,
--if not, register it and return GlobalID.
function get_GlobalID()
	--Check if Global ID is already set in iot config file
	if service.GlobalID ~= nil then
		return service.GlobalID
	end

	--Check if the MAC is already registered
	local code,gid = is_registered()
	if code == 200 then
		uci:set("iot","general","GlobalID",gid)
		uci:commit("iot")
		return gid
	elseif code == 404 then 
		local c,g = create_object()
		if c == 201 then
			create_externalID(g)
			uci:set("iot","general","GlobalID",g)
			uci:commit("iot")
			return g
		end
	end
end



--Start from Here
if opt == "-g" then
	get_GlobalID()
elseif opt == "-d" then
	local code,gid = is_registered()
	if code == 200 then
		uci:delete("iot","general","GlobalID")
		uci:commit("iot")
		delete_device(gid)
	end	

elseif opt == "-u" then 
	local types = arg[2]	
	gid = get_GlobalID()
	update_measurement_types(gid,types)

elseif opt == "-a" then 
	local types = arg[2]	
	gid = get_GlobalID()

	local _,object_table = get_object(gid)
	utility.tabledump(object_table)
	for w in string.gmatch(types, "[%s_%w]+") do
       	local duplicate = false
       	for k,v in pairs(object_table.c8y_SupportedMeasurements) do
	   		if w == v then duplicate = true end
       	end
       	if duplicate == false then
			table.insert(object_table.c8y_SupportedMeasurements,w)
		end
	end
	update_measurement_types(gid,table.concat(object_table.c8y_SupportedMeasurements,','))

elseif opt == "-p" then 
	local value = arg[2]	
	gid = get_GlobalID()
	post_measurements(gid,value)

elseif opt == "-ga" then 
	local gid = arg[2]
	--use local ID
	if gid == '0' then
		gid = get_GlobalID()
	end	
	local atype = arg[3]
	print(get_alarm_by_type(gid,atype))

elseif opt == "-sa" then 
	local gid = arg[2]
	--use local ID
	if gid == '0' then 
		gid = get_GlobalID()
	end	
	local atype = arg[3]
	send_alarm(gid,atype)

elseif opt == "-ca" then 
	local aid = arg[2]
	if aid == nil then
		local gid = get_GlobalID()

		local c,t,v
		c,t = get_alarms(gid)
		if c == 200 then
			for _,v in pairs(t) do
				clear_alarm(v.id)
			end 
		end
		
	else
		clear_alarm(aid)
	end

elseif opt == "-h" then 
	print('Cumulocity Lua Script; version 1.1')
	print('')
	print('-a typestring  :  Append measurement types')
	print('   Valid measurement name includes: all alphanumeric characters,space and _')
	print('   Example: -a "Temperature Sensor,Motion Sensor"')
	print('')
	print('-ca [AlarmID] :  clear alarm by alarmID, or clear all alarm from self device if alarmID is not set ')
	print('')
	print('-d  :  Delete this device,use mac for identify automatically')
	print('')
	print('-g  :  Get globalID of this device,use mac for identify automatically')
	print('')
	print('-ga GlobalID Type  :  Get Alarm ID by alarm type from a device which have the same Global ID.  If Global ID is set to 0, set the alarm to self device')
	print('')
	print('-h  :  help of this script')
	print('')
	print('-p  :  Post Measurement(s) ')
	print('Single sensor example :  -p \'"Customize Measurement": { "Point": { "value": 200, "unit": "ml" }}\'')
	print('Multi sensor example : -p \'"Customize Measurement": { "Point": { "value": 200, "unit": "ml" }},"TemperatureSensor": { "T": { "value": 35, "unit": "C" }}\'')
	print('')
	print('-sa GlobalID Type :  send an alarm to a device which have the same Global ID.  If Global ID is set to 0, set the alarm to self device')
	print('')
	print('-u typestring  :  Update measurement types')
	print('Valid measurement name includes: all alphanumeric characters,space and _')
	print('Example: -u "Temperature Sensor,Motion Sensor"')
	print('')

end	


return M