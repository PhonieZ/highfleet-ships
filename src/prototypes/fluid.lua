--Functions
function create_gas(parameters)
    return--Takes gas name,flow color,default temperature and when it turns into a gas and 
    {     --puts this into a form that can be passed into data:extend
        icon="__highfleet-ships__/graphics/icons/"..parameters.name..".png",
        icon_mipmaps=4,
        icon_size=64,
        type="fluid",
        name=parameters.name,
        subgroup="fluid",
        base_color={},
        flow_color=parameters.flow_color,
        default_temperature=parameters.default_temperature,
        gas_temperature=parameters.gas_temperature,
        for keys,values in ipairs(flow_color) do
            table.insert(base_color,math.floor(0.5*values))
        end
    }
end

data:extend({--  Fluids

    {--  Refined Fuel
        icon="__highfleet-ships__/graphics/icons/refined-fuel.png",
        icon_mipmaps=4,
        icon_size=64,
        type="fluid",
        name="refined-fuel",
        subgroup="fluid",
        base_color={0,18,18,0.1},
        flow_color={171,255,255},
        default_temperature=-80,
        max_temperature=-48,
        emissions_multiplier=0.5,
        fuel_value="30KJ",
        heat_capacity="1KJ",
    },

    {--  Crude Fuel
        icon="__highfleet-ships__/graphics/icons/crude-fuel.png",
        icon_mipmaps=4,
        icon_size=64,
        type="fluid",
        name="crude-fuel",
        subgroup="fluid",
        base_color={127,41,41},
        flow_color={255,81,81},
        default_temperature=-35,
        max_temperature=0,
        gas_temperature=-48,
        emissions_multiplier=2,
        fuel_value="5KJ",
        heat_capacity="0.5KJ",
    },
--[[
    {--  Ethylene Gas
        icon="__highfleet-ships__/graphics/icons/ethylene-gas.png",
        icon_mipmaps=4,
        icon_size=64,
        type="fluid",
        name="ethylene-gas",
        subgroup="fluid",
        base_color={70,127,70},
        flow_color={140,255,140},
        default_temperature=15,
        gas_temperature=-104,
    },
--]]

    create_gas({-- Ethylene Gas Test
        name="ethylene-gas",
        flow_color={140,255,140},
        default_temperature=15,
        gas_temperature=-104,
    })

})
