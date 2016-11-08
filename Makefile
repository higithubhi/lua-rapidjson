INCLUDE_LUA=-I../../3rd/lua
CFLAGS = -g -O2 -Wall $(INCLUDE_LUA)  -I$(LUA_INCLUDE_DIR) -I./rapidjson/include
CXXFLAGS= -std=c++11 -fpermissive

SHARED = -fPIC -shared



all : rapidjson.so
rapidjson.so : lua-rapidjson.cpp
	$(CXX) $(CFLAGS) $(CXXFLAGS) $(SHARED) $^ -o $@ 
	
clean : rapidjson.so
	rm -f $^
