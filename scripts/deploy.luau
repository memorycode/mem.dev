local process = require("@lune/process")
print(process.spawn("git", {
	"submodule",
	"update",
	"--init",
}))

process.spawn("lune", {
	"run",
	"src/server",
})
