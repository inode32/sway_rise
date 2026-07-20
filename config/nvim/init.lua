vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

vim.cmd.colorscheme("default")

local highlights = {
    Normal       = { bg = "NONE", fg = "#cccccc" },
    NormalNC     = { bg = "NONE", fg = "#cccccc" },
    NonText      = { bg = "NONE", fg = "#333333" },
    EndOfBuffer  = { bg = "NONE", fg = "#333333" },
    SignColumn   = { bg = "NONE" },

    LineNr       = { fg = "#555555" },
    CursorLineNr = { fg = "#ffffff", bold = true },

    Comment      = { fg = "#558855", italic = true },
    String       = { fg = "#77aa77" },
    Number       = { fg = "#77cccc" },
    Boolean      = { fg = "#77cccc", bold = true },

    Identifier   = { fg = "#cccccc" },
    Function     = { fg = "#7777cc", bold = true },
    Statement    = { fg = "#cccc77", bold = true },
    Keyword      = { fg = "#cccc77", bold = true },
    Type         = { fg = "#55aaaa" },
    Constant     = { fg = "#cc77cc" },
    Operator     = { fg = "#cccccc" },
    PreProc      = { fg = "#5555aa" },

    Search       = { bg = "#cccc77", fg = "#000000" },
    IncSearch    = { bg = "#ffffff", fg = "#000000", bold = true },
    Visual       = { bg = "#333333" },
    Cursor       = { bg = "#cccccc", fg = "#000000" },
    MatchParen   = { fg = "#ffffff", bg = "#5555aa", bold = true },

    Error        = { bg = "NONE", fg = "#8b0000", bold = true },
    ErrorMsg     = { fg = "#ff4444", bold = true },
    WarningMsg   = { fg = "#aaaa55" },
}

for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end
