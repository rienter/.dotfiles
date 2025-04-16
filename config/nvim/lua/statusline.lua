-- Modules
local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", current_mode):upper()
end

local function filepath()
    local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.")
    return string.format(" %s ", fpath)
end

local function filetype()
    return string.format(" %s ", vim.bo.filetype):upper()
end

-- Utility
local function highlight(module)
    return string.format("%%#StatusLine#%s", module)
end

local function transparent(module)
    return string.format("%%#Normal#%s", module)
end

local function pad()
    return "%="
end

-- This table contains the two modes for statusline: active and inactive buffer
Statusline = {}

Statusline.active = function()
    return table.concat {
        highlight(mode()),
        transparent(filepath() .. pad()),
        highlight(filetype()),
    }
end

Statusline.inactive = function()
    return " %F"
end

-- Autocommands to draw statusline when entering/leaving buffers
local group = vim.api.nvim_create_augroup("Statusline", {clear = true})
vim.api.nvim_create_autocmd({'WinEnter', 'BufEnter'}, {
    pattern = { "*" },
    group = group,
    command = "setlocal statusline=%!v:lua.Statusline.active()",
})
vim.api.nvim_create_autocmd({'WinLeave', 'BufLeave'}, {
    pattern = { "*" },
    group = group,
    command = "setlocal statusline=%!v:lua.Statusline.inactive()",
})
