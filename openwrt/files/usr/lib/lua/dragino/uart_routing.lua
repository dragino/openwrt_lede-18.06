#! /usr/bin/env lua
--[[

    UART Routing Script:
	UART Routing Script is a simple routing script runs in background. 
	it match the data from UART interface and dispatch it to the 
	relevant Sensor file

    Copyright (C) 2014 Dragino Technology Co., Limited

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

]]--


local dragino_utility = require ("dragino.utility")
local luci_util = require("luci.util")
local uci = require("luci.model.uci")
uci = uci.cursor()

local logName = 'UART Routing'
local debug = 1

--List All Valid Patterns for Sensors to table
local SensorToBeMatched = {}
uci:foreach ("sensor", "channels", 
	function (s)
	  --if s.class == 'sensor' then
	    if s.pattern and luci_util.trim(s.pattern) ~= "" then 
		  table.insert(SensorToBeMatched,s)
		end
	  --end
	end			
)

function logger(s)
	if debug >=1 then 
	  dragino_utility.logger('[UART Routing]' .. s)
	end
end

--Open UART with specify BAUD RATE
serialin=io.open("/dev/ttyATH0","rb")   --open serial port and prepare to read data from UART


--Dispatch UART data to Sensor File 
function Dispatch_UART_Data_to_Sensor_File(raw)
	if raw == nil or luci_util.trim(raw) == '' then return end
	logger('Raw: ' .. raw)
	for k,v in pairs(SensorToBeMatched) do
		local mat1 = string.match(raw,v.pattern) -- match valid data pattern from each Sensor
		if mat1 ~= nil then
			dragino_utility.set_sensor_data(v['.name'],mat1)
			logger('Store: ' .. v['.name']..' '..mat1)
		end
	end
end


while true do
	while raw_data == nil do 
		serialin:flush()
		raw_data = serialin:read()
	end
	Dispatch_UART_Data_to_Sensor_File(raw_data)	
	raw_data=nil	
end
serialin:close()