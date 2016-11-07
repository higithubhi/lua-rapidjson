INCLUDE_LUA=-I../../3rd/lua
INCLUDE_LUA=-I/home/yd/web/luajit/include/luajit-2.1/
CFLAGS = -g -O2 -Wall $(INCLUDE_LUA)
CXXFLAGS= -std=c++11 -fpermissive

SHARED = -fPIC -shared



all : rapidjson.so
rapidjson.so : lua-rapidjson.cpp
	$(CXX) $(CFLAGS) $(CXXFLAGS) $(SHARED) $^ -o $@ 
	
clean : rapidjson.so
	rm -f $^
