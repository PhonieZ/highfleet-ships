--Initialization
--  Gas Refinery
local gas_refinery=table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
gas_refinery.name="gas-refinery"
gas_refinery.icon="__highfleet-ships__/graphics/icons/placeholder.png"
gas_refinery.icon_mipmaps=0
gas_refinery.energy_usage="525kW"
gas_refinery.crafting_categories={"gas-refining","gas-mixing"}
gas_refinery.minable.result="gas-refinery"
gas_refinery.working_sound.sound=
{
  filename="__base__/sound/oil-refinery.ogg",
  volume=0.5
}

--  Fractionating Spire
local fractionating_spire=table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
fractionating_spire.name="fractionating-spire"
fractionating_spire.icon="__highfleet-ships__/graphics/icons/placeholder.png"
fractionating_spire.icon_mipmaps=0
fractionating_spire.energy_usage="1050kW"
fractionating_spire.crafting_categories={"gas-fractionating"}
fractionating_spire.minable.result="fractionating-spire"
fractionating_spire.working_sound.sound=
{
  filename="__base__/sound/oil-refinery.ogg",
  volume=0.5
}

--  Pyrolysis Plant
local pyrolysis_plant=table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
pyrolysis_plant.name="pyrolysis-plant"
pyrolysis_plant.icon="__highfleet-ships__/graphics/icons/placeholder.png"
pyrolysis_plant.icon_mipmaps=0
pyrolysis_plant.energy_usage="788kW"
pyrolysis_plant.crafting_categories={"steam-cracking"}
pyrolysis_plant.minable.result="pyrolysis-plant"
pyrolysis_plant.working_sound.sound=
{
  filename="__base__/sound/oil-refinery.ogg",
  volume=0.5
}


data:extend({--  Entities
  gas_refinery,
  fractionating_spire,
  pyrolysis_plant
})