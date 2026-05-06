------------------------------,------------
--     _______     _ __  _   /|_          -
--    /__  __/__  (_) /_| | / (_)___ ___  -
--      / // __ \/ / __/| |/ / / __ `__ \ -
--     / // / / / / /_ _| ` / / / / / / / -
--  __/ //_/_/_/_/\__/(_)  /_/_/ /_/ / /  -
-- /______/             | /          \|   -
------------------------|/-----------------
-------------------------------------------

local autocmd_ok, autocmd_or_err = pcall(require, 'cfg.autocmd')
if not autocmd_ok then return print(autocmd_or_err .. '\n\n' .. debug.traceback()) end

local set_ok, set_or_err = pcall(require, 'cfg.set')
if not set_ok then return print(set_or_err .. '\n\n' .. debug.traceback()) end

local remaps_ok, remaps_or_err = pcall(require, 'cfg.remaps')
if not remaps_ok then return print(remaps_or_err .. '\n\n' .. debug.traceback()) end

local lazy_ok, lazy_or_err = pcall(require, 'cfg.lazy')
if not lazy_ok then return print(lazy_or_err .. '\n\n' .. debug.traceback()) end

local filetypes_ok, filetypes_or_err = pcall(require, 'cfg.filetypes')
if not filetypes_ok then return print(filetypes_or_err .. '\n\n' .. debug.traceback()) end

local local_ok, local_or_err = pcall(require, 'cfg.local')
if not local_ok then return print(local_or_err .. '\n\n' .. debug.traceback()) end

local yank_ok, yank_or_err = pcall(require, 'cfg.yank')
if not yank_ok then return print(yank_or_err .. '\n\n' .. debug.traceback()) end

local panel_stack_ok, panel_stack_or_err = pcall(require, 'cfg.panel_stack')
if not panel_stack_ok then return print(panel_stack_or_err .. '\n\n' .. debug.traceback()) end

-- Load panel stack
panel_stack_or_err.setup({ max_capacity = 20 })

-- Keybinding to reopen last closed panel
vim.keymap.set('n', '<leader>p', ':ReopenPanel<CR>', { noremap = true, silent = true })



-- -- TODO: Auto-require all files in cfg/ (except init.lua):
-- -- Path to your cfg directory
-- local cfg_path = vim.fn.stdpath("config") .. "/lua/cfg"
--
-- -- Read all .lua files in cfg/
-- local files = vim.fn.readdir(cfg_path, function(fname)
--   return fname:match("%.lua$")
-- end)
--
-- -- Iterate through files, require each (skip init.lua)
-- for _, file in ipairs(files) do
--   local name = file:gsub("%.lua$", "") -- strip .lua
--   if name ~= "init" then
--     local ok, result_or_err = pcall(require, "cfg." .. name)
--     if not ok then
--       return print(("Error loading cfg.%s:\n%s\n\n%s"):format(name, result_or_err, debug.traceback()))
--     end
--   end
-- end
--
