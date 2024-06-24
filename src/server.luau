local fs = require("@lune/fs")

for _, file in fs.readDir("./") do
	print(file)
end

local Lynx = require("../lynx/src/lynx")
local app = Lynx.new()
app:static("/", "public")
app:serve(3000)
