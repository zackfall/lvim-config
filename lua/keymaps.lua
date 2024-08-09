function MapNormal(bind --[[string]], command --[[string]])
  lvim.keys.normal_mode[bind] = command
end

function MapInsert(bind --[[string]], command --[[string]])
  lvim.keys.insert_mode[bind] = command
end

function MapVisual(bind --[[string]], command --[[string]])
  lvim.keys.visual_mode[bind] = command
end

-- ###################################################################
-- # Insert mode                                                     #
-- ###################################################################
MapInsert("kj", "<esc>")

-- ###################################################################
-- # Normal mode                                                     #
-- ###################################################################
MapNormal("L", "<cmd>BufferLineCycleNext<cr>")
MapNormal("H", "<cmd>BufferLineCyclePrev<cr>")

-- ###################################################################
-- # Normal mode                                                     #
-- ###################################################################
MapVisual("p", "\"_dP")

-- ###################################################################
-- # Which Key                                                     #
-- ###################################################################
lvim.builtin.which_key.mappings["n"] = {
  "<cmd>enew<cr>", "Create a new file"
}
lvim.builtin.which_key.mappings["lt"] = {
  "<cmd>TodoTelescope<cr>", "Toggle Todos"
}
lvim.builtin.which_key.mappings["lc"] = {
  "<cmd>Telescope lsp_references<cr>", "Find References"
}
