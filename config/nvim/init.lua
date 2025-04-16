--  ███▄    █  ▓█████ ▒█████   ██▒   █▓  ██▓ ███▄ ▄███▓
--  ██ ▀█   █  ▓█   ▀▒██▒  ██▒▓██░   █▒▒▓██▒▓██▒▀█▀ ██▒
-- ▓██  ▀█ ██▒ ▒███  ▒██░  ██▒ ▓██  █▒░▒▒██▒▓██    ▓██░
-- ▓██▒  ▐▌██▒ ▒▓█  ▄▒██   ██░  ▒██ █░░░░██░▒██    ▒██ 
-- ▒██░   ▓██░▒░▒████░ ████▓▒░   ▒▀█░  ░░██░▒██▒   ░██▒
-- ░ ▒░   ▒ ▒ ░░░ ▒░ ░ ▒░▒░▒░    ░ ▐░   ░▓  ░ ▒░   ░  ░
-- ░ ░░   ░ ▒░░ ░ ░    ░ ▒ ▒░    ░ ░░  ░ ▒ ░░  ░      ░
--    ░   ░ ░     ░  ░ ░ ░ ▒        ░  ░ ▒ ░░      ░   
--          ░ ░   ░      ░ ░        ░    ░         ░
-- Configuration by rienter

-- First of all, colorscheme
vim.cmd.colorscheme 'quiet'

-- Indentation
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Use path to search files
vim.o.path:append { "**" }

-- Search
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true

-- Disable mouse
vim.o.mouse = ""

-- Load from external files
require('statusline')
