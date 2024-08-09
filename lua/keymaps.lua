function MapNormal(bind, command)
  lvim.keys.normal_mode[bind] = command
end

function MapInsert(bind, command)
  lvim.keys.insert_mode[bind] = command
end

function MapVisual(bind, command)
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
