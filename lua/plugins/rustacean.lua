-- TODO: Make it more robust
vim.g.rustaceanvim = {
  rust_analyzer = {
    check = {
      command = "clippy"
    },
    cargo = {
      buildScripts = {
        rebuildOnSave = false
      }
    }
  }
}
