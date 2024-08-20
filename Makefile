test:
	LUA_PATH=$$(luarocks path --lr-path) LUA_CPATH=$$(luarocks path --lr-cpath) luarocks test --local

format:
	stylua lua/
	stylua spec/
