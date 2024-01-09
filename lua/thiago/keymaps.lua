local keymap = vim.keymap
local opt = { noremap = true, silent = true }

keymap.set("n", "<leader>w",":w<cr>")
keymap.set("n", "<leader>q",":q<cr>")
keymap.set("n", "<C-n>", vim.cmd.Ex)
keymap.set("n", "<leader>l",":Lazy<cr>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")
keymap.set("n", "<leader>gg", "gg<S-v>G")


keymap.set("n", "<leader>hm", [[<Cmd>lua require("harpoon.mark").add_file()<CR>]])
keymap.set("n", "<leader>hh", [[<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
keymap.set("n", "<leader>y", [[<Cmd>lua require("harpoon.ui").nav_file(1)<CR>]])
keymap.set("n", "<leader>u", [[<Cmd>lua require("harpoon.ui").nav_file(2)<CR>]])
keymap.set("n", "<leader>i", [[<Cmd>lua require("harpoon.ui").nav_file(3)<CR>]])
keymap.set("n", "<leader>o", [[<Cmd>lua require("harpoon.ui").nav_file(4)<CR>]])
keymap.set("n", "<leader>p", [[<Cmd>lua require("harpoon.ui").nav_file(5)<CR>]])

keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opt)
keymap.set('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')



keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opt)
keymap.set("n", "K", function() vim.lsp.buf.hover() end, opt)
keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opt)
keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opt)
keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opt)
keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opt)
keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opt)
keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opt)
keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opt)
keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opt)
