vim.filetype.add({
	filename = {
		[".todo"] = "txt",
  },
	pattern = {
		["requirements.txt"] = "config",
		["gitconf.*"] = "gitconfig",
	},
})
