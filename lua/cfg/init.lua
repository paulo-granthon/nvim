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
if not autocmd_ok then return print('failed to import cfg.autocmd from `cfg`' .. autocmd_or_err) end

local set_ok, set_or_err = pcall(require, 'cfg.set')
if not set_ok then return print('failed to import cfg.set from `cfg`' .. set_or_err) end

local remaps_ok, remaps_or_err = pcall(require, 'cfg.remaps')
if not remaps_ok then return print('failed to import cfg.remaps from `cfg`' .. remaps_or_err) end

local lazy_ok, lazy_or_err = pcall(require, 'cfg.lazy')
if not lazy_ok then return print('failed to import cfg.lazy from `cfg`' .. lazy_or_err) end

local filetypes_ok, filetypes_or_err = pcall(require, 'cfg.filetypes')
if not filetypes_ok then return print('failed to import cfg.filetypes from `cfg`' .. filetypes_or_err) end

local local_ok, local_or_err = pcall(require, 'cfg.local')
if not local_ok then return print('failed to import cfg.local from `cfg`' .. local_or_err) end

local yank_ok, yank_or_err = pcall(require, 'cfg.yank')
if not yank_ok then return print('failed to import cfg.yank from `cfg`' .. yank_or_err) end
