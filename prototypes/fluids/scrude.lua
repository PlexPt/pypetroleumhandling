
FLUID {
    type = "fluid",
    name = "scrude",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/scrude.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.01, g = 0.01, b = 0.01},
    flow_color = {r = 0.01, g = 0.01, b = 0.01},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
