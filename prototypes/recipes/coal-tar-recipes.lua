
RECIPE {
    type = "recipe",
    name = "carbon-black",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 50},
        {type = "fluid", name = "hot-air", amount = 25},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 1},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "carbolic-oil-creosote",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "carbolic-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "creosote", amount = 50},
    },
    main_product = "creosote",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "stone-brick-2",
    category = "hpf",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone", amount = 5},
        {type = "fluid", name = "pitch", amount = 50},
    },
    results = {
        {type = "item", name = "stone-brick", amount = 4},
    },
    main_product = "stone-brick",
}:add_unlock('coal-processing-1')

--napathalene recipes

RECIPE {
    type = "recipe",
    name = "naphthalene-oil-creosote",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "creosote", amount = 30},
    },
    main_product = "creosote",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "aromatics",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 50},
        {type = "fluid", name = "hot-air", amount = 25},
    },
    results = {
        {type = "fluid", name = "aromatic", amount = 30},
        {type = "item", name = "coke", amount = 3},
    },
    main_product = "aromatic",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("placeholder")

RECIPE {
    type = "recipe",
    name = "anthraquinone",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 100},
        {type = "item", name = "vanadium-oxide", amount = 2},
    },
    results = {
        {type = "fluid", name = "anthraquinone", amount = 50},
    },
    main_product = "anthraquinone",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("placeholder")

RECIPE {
    type = "recipe",
    name = "naphthalene-solvent",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 100},
        {type = "fluid", name = "carbonic-oil", amount = 20},
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 30},
    },
    main_product = "organic-solvent",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("placeholder")
