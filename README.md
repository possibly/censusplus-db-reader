# A Guide to Converting 1.12.1 CensusPlus' Lua Table to a Ruby Object

Install LUA and use a LUA-based json generator to read CensusPlus' SavedVariables file. Ruby is just a shell that runs the LUA script and captures the generated JSON from stdout.

## Instructions

Install LUA (>=5.3.5)
```
curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz
tar zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make macosx install
```

Install the LUA package manager, LuaRocks (>= 3.0.3)
```
wget https://luarocks.org/releases/luarocks-3.0.3.tar.gz
tar zxpf luarocks-3.0.3.tar.gz
cd luarocks-3.0.3
./configure; sudo make bootstrap
```
(You may need to install CMake -- `brew install cmake`)

Install the LUA library, rapidjson
```
luarocks install rapidjson
```

Find path to CensusPlus.lua for 1.12.1 WoW: WoW/WTF/Account/AccName/SavedVariables/CensusPlus.lua

Use CensusPlusReader
```
require 'CensusPlusReader.rb'

path = "CensusPlus.lua"

data = CensusPlusReader.to_json(path)
```
