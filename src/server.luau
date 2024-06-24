local Lynx = require("../lynx/src/lynx")

local app = Lynx.new()
app:static("/", "public")
app:serve(3000)
