#! /usr/bin/env lua
--[[

    xively.lua - Lua Script to communicate with xively service 
	ver:0.1

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
local pairs,tonumber,tostring,print = pairs,tonumber,tostring,print
local table = table
local uci = require("luci.model.uci")

local utility = require 'dragino.utility'


setfenv(1,M)

uci = uci.cursor()
local TOP_URL = 'https://api.xively.com'
local SENSOR_DIR = '/var/iot/channels/'
local debug = tonumber(uci:get("iot-services","general","debug"))
local logger = utility.logger

--get sensor data
--@return sensor_table which can be used for post_data
function collect_sensor_data()
  local valuetable = {}
  local value
  uci:foreach("xively","channels",
		function (section)
			if section["class"] == 'upload' then
				local value = utility.get_channel_value(section["id"])
				if value ~= nil then 
					local n = #valuetable+1
					valuetable[n]={}
					valuetable[n].id= section.remoteID
					valuetable[n].current_value = value		
				end
			end
		end
  )
  return valuetable
end


--upload data RESTful
--@param ak ApiKey
--@param feed_id feed id
--@param value value table . etc: {{id = "Humidity", current_value = "36" }, {id = "Temperature", current_value = "54"}}
--@return code return code
function post_data(ak, feed_id,value)
	local chunks = {}
	if value == nil then return end
	local d = { datastreams = value }
	local body = json.encode(d)
	ret, code, head = http.request(
		{ ['url'] = TOP_URL .. '/v2/feeds/'..feed_id..'.json',
			method = 'PUT',
			headers = {
				["Connection"] = "Keep-Alive",
				["Content-Length"] = tostring(body:len()),
				["X-ApiKey"] = ak,
			},
			source = ltn12.source.string(body),
			sink = ltn12.sink.table(chunks)

		}
	)

	if debug >= 1 then 
		if debug >= 2 and chunks and chunks[1] then
			logger('xively: insert_data: chunks[1]='..chunks[1])
		end
		if ret then logger('xively: insert_data:  ret='..ret) end
		logger('xively: insert_data: body='..body)
		logger('xively: insert_data: return code='..code)
	end

	return code
end

--upload data handler
--@return code return code
function update_data(apiKey,feed)
  local datastream = collect_sensor_data()
  post_data(apiKey,feed,datastream)
end



return M
