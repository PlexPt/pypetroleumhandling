require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes/updates/pycoalprocessing-updates")
require("prototypes/updates/pyfusionenergy-updates")
require("prototypes/updates/pyindustry-updates")

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

require('prototypes/updates/tholin-overhaul')

--ADAPTATIONS

TECHNOLOGY('logistic-science-pack'):add_prereq('rubber')
--TECHNOLOGY('advanced-material-processing'):remove_pack('logistic-science-pack'):remove_prereq('logistic-science-pack')

--RECIPES UPDATES

RECIPE("lab-instrument"):add_ingredient({type = "item", name = "small-parts-01", amount = 5}):add_ingredient({type = "item", name = "rubber", amount = 10})
RECIPE("chemical-science-pack"):add_ingredient({type = "item", name = "rubber", amount = 10})
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("engine-unit"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-01", amount = 40}):set_fields {energy_required = 15}
--RECIPE("assembling-machine-2"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})
RECIPE("fast-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 2})
RECIPE("fast-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 6})
RECIPE("fast-splitter"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 6})
RECIPE("express-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 4})
RECIPE("express-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 6})
RECIPE("express-splitter"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 6})
RECIPE("red-wire"):add_ingredient({type = "item", name = "rubber", amount = 1})
RECIPE("green-wire"):add_ingredient({type = "item", name = "rubber", amount = 1})
RECIPE("carbon-filter"):remove_ingredient("assembling-machine-2"):add_ingredient({type = "item", name = "assembling-machine-1", amount = 2})
RECIPE("rectisol"):remove_ingredient("assembling-machine-2"):add_ingredient({type = "item", name = "assembling-machine-1", amount = 2})
RECIPE("small-parts-03"):replace_ingredient("glass", "glass-fiber"):replace_ingredient("tin-plate", "aerogel")
--RECIPE("tall-oil-combustion"):remove_unlock('energy-2'):add_unlock('energy-1')
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "small-parts-03", amount = 30})

--Base Updates

data.raw['rocket-silo']['rocket-silo'].rocket_parts_required = 15

local remove_old_oil_stuff =
	{
	['pumpjack'] = true,
	['oil-refinery'] = true,
	['basic-oil-processing'] = true,
	['advanced-oil-processing'] = true,
	['heavy-oil-cracking'] = true,
	['light-oil-cracking'] = true,
	['coal-liquefaction'] = true
	}

local recipes_to_keep = {}

--log(serpent.block(remove_old_oil_stuff))

for _, recipe in pairs(data.raw.technology['oil-processing'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		--log(recipe.recipe)
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['oil-processing'].effects = recipes_to_keep
recipes_to_keep = {}

for _, recipe in pairs(data.raw.technology['advanced-oil-processing'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		--log(recipe.recipe)
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['advanced-oil-processing'].effects = recipes_to_keep
recipes_to_keep = {}

for _, recipe in pairs(data.raw.technology['coal-liquefaction'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['coal-liquefaction'].effects = recipes_to_keep

data.raw.resource['crude-oil'].autoplace = nil
data.raw['autoplace-control']['crude-oil'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['crude-oil'] then
      preset.basic_settings.autoplace_controls['crude-oil'] = nil
    end
end

if data.data_crawler then
	if mods['pyhightech'] then
	  data.script_enabled = {
		{type = "entity", name = "crash-site-assembling-machine-1-repaired"},
		{type = "entity", name = "tar-patch"}
	  }
	else
	  data.script_enabled = {
		{type = "entity", name = "tar-patch"}
	  }
	end
  end


  local GIR = require('prototypes/functions/functions')

  GIR.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01","casting-gear"})

  --RECIPES UPDATES
  --hot air blacklist
  -- comment out/delete recipes that are ok for hot air increase
  --anything left active in list will be ingored when adding hot air to advanced furnace recipes
  local hablist = {
	  'chromium-rejects',
	  'chromium-01',
	  'copper-plate-4',
	  'empty-comb-2'
  }

  GIR.HAB(hablist)

  local extra_hot_air_recipes =
	  {
		  'niobium-plate',
		  'molybdenum-plate',
		  --glass hot air recipes
		  'flask',
		  'flask-2',
		  'flask-3',
		  'glass-core',
		  'molten-glass',
		  'glass-fiber',
		  'lens',
		  --non molten plates
		  'gold-plate',
		  'ndfeb-alloy',
		  're-tin',
		  'crco-alloy',
		  'super-alloy',
		  --pyal petri dishes
		  'empty-petri-dish'
	  }

  --log(serpent.block(data.raw.recipe['flask']))
  --add hot air
  GIR.hotairrecipes(extra_hot_air_recipes)

  --log(serpent.block(data.raw.recipe['hotair-flask']))
  --[[
  for r, recipe in pairs(data.raw.recipe) do
	  if recipe.category == 'glassworks' then
		  for i, ing in pairs(recipe.ingredients) do
			  if ing.name == 'hot-air' then
				  table.insert(ing, fluidbox_index)
				  ing.fluidbox_index = 3
			  end
		  end
	  end
  end
  ]]--

--TODO
RECIPE('hotair-flask'):set_enabled(false):add_unlock('coal-processing-1')
RECIPE('hotair-molten-glass'):add_unlock('coal-processing-1'):set_fields{enabled = false}
