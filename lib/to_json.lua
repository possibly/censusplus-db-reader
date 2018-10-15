local censusData = loadfile(arg[1])()
local rapidjson = require('rapidjson')

print (rapidjson.encode(load("return " .. arg[2])()))
