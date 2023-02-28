if vim.g.vscode then
	return
end

local api = vim.api
local utils = require("utils")

local core_conf_files = {
  "plugins.lua",
  "options.vim",
  "lsp.lua",
  --"null-ls.lua",
}

for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end
