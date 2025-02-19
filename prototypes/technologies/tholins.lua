TECHNOLOGY {
    type = "technology",
    name = "tholin-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/tholin-01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1","crusher"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tholin-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/tholin-02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tholin-mk01"},
    dependencies = {"tholin-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tholin-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/tholin-03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tholin-mk02"},
    dependencies = {"tholin-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tholin-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/tholin-04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tholin-mk03"},
    dependencies = {"tholin-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'space-science-pack', 1},
       },
        time = 45
    }
}