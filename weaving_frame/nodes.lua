core.register_node("weaving_frame:frame", {
  description = S("Weaving Frame"),
  drawtype = "nodebox",
  tiles = { "tech_stick.png" },
  stack_max = minimal.stack_max_bulky,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = { falling_node = 1, dig_immediate = 3, craftedby = 1 },
  node_box = {
    type = "fixed",
    fixed = {
      { -0.3750, -0.3750, -0.3750, 0.3750, -0.2500, -0.2500 }, -- NodeBox1
      { -0.5000, -0.5000, -0.3750, -0.3750, -0.1250, -0.2500 }, -- NodeBox2
      { 0.3750, -0.5000, -0.3750, 0.5000, -0.1250, -0.2500 }, -- NodeBox3
      { 0.3750, -0.5000, 0.3750, 0.5000, 0.0625, 0.5000 }, -- NodeBox4
      { -0.5000, -0.5000, 0.3750, -0.3750, 0.0625, 0.5000 }, -- NodeBox5
      { -0.3750, -0.0625, 0.3750, 0.3750, 0.0625, 0.5000 }, -- NodeBox6
      { -0.3125, -0.5000, 0.3750, -0.2500, -0.0625, 0.4375 }, -- NodeBox7
      { 0.2500, -0.5000, 0.3750, 0.3125, -0.0625, 0.4375 }, -- NodeBox8
      { 0.1250, -0.5000, 0.3750, 0.1875, -0.0625, 0.4375 }, -- NodeBox9
      { -0.1875, -0.5000, 0.3750, -0.1250, -0.0625, 0.4375 }, -- NodeBox10
      { -0.0625, -0.5000, 0.3750, 0.0625, -0.0625, 0.5000 }, -- NodeBox11
      { -0.5000, -0.0625, 0.3125, 0.5000, 0.0000, 0.3750 }, -- NodeBox12
      { -0.5000, -0.4375, 0.3125, 0.5000, -0.3750, 0.3750 }, -- NodeBox13
      { -0.4375, -0.3750, -0.3000, -0.3750, -0.3000, 0.3750 }, -- NodeBox14
      { 0.4375, -0.3750, -0.3000, 0.3750, -0.3000, 0.3750 }, -- NodeBox15
    },
  },
  sounds = nodes_nature.node_sound_wood_defaults(),
  on_rightclick = crafting.make_on_rightclick("weaving_frame", 3, { x = 8, y = 3 }),
})