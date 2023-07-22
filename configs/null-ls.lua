local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with { extra_filetypes = { "svelte" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- Tailwindcss
  b.formatting.rustywind,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
