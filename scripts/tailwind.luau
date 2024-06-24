local process = require("@lune/process")
local result = process.spawn("./tailwindcss-3.4.4.exe", {
	"-i",
	"src/input.css",
	"-o",
	"public/output.css",
	"--minify",
})

assert(result.ok, "Failed to build")
print("Done")
