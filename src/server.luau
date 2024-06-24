-- local fs = require("@lune/fs")
local process = require("@lune/process")

local PORT = process.env.PORT or 3000
print(process.env.PORT)
-- for _, file in fs.readDir("./lynx") do
-- 	--print(file)
-- end

local Lynx = require("../lynx/src/lynx")
local app = Lynx.new()
app:static("/", "public")
app:serve(PORT)
