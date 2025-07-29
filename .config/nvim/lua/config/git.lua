--lua/config/git.lua

--vim-fugitive のショートカット
vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git ステータスを開く" })

--lazygitのショートカット
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit を開く" })

