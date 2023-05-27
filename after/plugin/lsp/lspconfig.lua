local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap -- for conciseness

    -- enable keybinds only for when lsp server available
    local on_attach = function(client, bufnr)
    -- keybind options
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- set keybinds
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- got to declaration
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- see definition and make edits in window
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
    keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
    keymap.set("n", "<leader>rn", ":IncRename ", opts) -- smart rename
    keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
end

local capabilities = cmp_nvim_lsp.default_capabilities()

  -- configure html server
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure css server
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

-- configure cpp server
lspconfig["clangd"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure python server
lspconfig["pyright"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})
