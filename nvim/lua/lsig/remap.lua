local nnoremap = require("lsig.keymap").nnoremap
local inoremap = require("lsig.keymap").inoremap
local vnoremap = require("lsig.keymap").vnoremap
local xnoremap = require("lsig.keymap").xnoremap

-- normal mode remaps
-- Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")

--File explorer
nnoremap("<leader>pv", "<cmd>:Ex<CR>")

-- Lspsaga
nnoremap("gf", "<cmd>:Lspsaga lsp_finder<CR>", { silent = true }) -- show definition, references
nnoremap("gD", "<cmd>:lua vim.lsp.buf.declaration()<CR>") -- got to declaration
nnoremap("gd", "<cmd>:Lspsaga peek_definition<CR>", { silent = true }) -- see definition and make edits in window
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>") -- go to implementation
nnoremap("<leader>ca", "<cmd>:Lspsaga code_action<CR>", { silent = true }) -- see available code actions
nnoremap("<leader>rn", "<cmd>:Lspsaga rename<CR>", { silent = true }) -- smart rename
nnoremap("<leader>D", "<cmd>:Lspsaga show_line_diagnostics<CR>", { silent = true }) -- show  diagnostics for line
nnoremap("<leader>d", "<cmd>:Lspsaga show_cursor_diagnostics<CR>", { silent = true }) -- show diagnostics for cursor
nnoremap("[d", "<cmd>:Lspsaga diagnostic_jump_prev<CR>", { silent = true }) -- jump to previous diagnostic in buffer
nnoremap("]d", "<cmd>:Lspsaga diagnostic_jump_next<CR>", { silent = true }) -- jump to next diagnostic in buffer
nnoremap("K", "<cmd>:Lspsaga hover_doc<CR>", { silent = true }) -- show documentation for what is under cursor
nnoremap("<leader>o", "<cmd>:Lspsaga outline<CR>", { silent = true }) -- see outline on right hand side
nnoremap("<A-d>", "<cmd>:Lspsaga open_floatterm<CR>", { silent = true }) -- Float terminal

-- Window splitting
nnoremap("<leader>sv", "<C-w>v")
nnoremap("<leader>sh", "<C-w>s")
nnoremap("<leader>se", "<C-w>=")
nnoremap("<leader>sx", "<cmd>:close<CR>")

nnoremap("J", "mzJ`z")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("<leader>y", '"+y')
nnoremap("<leader>Y", '"+Y')
nnoremap("Q", "<nop>")

-- insert mode remaps
inoremap("<C-c>", "<ESC>")

-- visual mode remaps
-- butterrrr
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
vnoremap("<leader>y", '"+y')

-- x mode remaps
xnoremap("<leader>p", '"_dP')
