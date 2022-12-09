local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
   return
end

treesitter.setup {
   highlight = {
      enable = true,
   },
   indent = { enable = true },
   autotag = { enable = true },
   ensure_installed = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "markdown",
      "bash",
      "lua",
      "vim",
      "gitignore",
      "cpp",
      "cmake",
      "java",
      "python",
      "graphql",
      "yaml",
      "dockerfile",
   },
   auto_install = true,
}
