--Functions
function float_to_rgb(float_colour)
    float_colour[4]=float_colour[4] or 1
    local rgb_colour={0,0,0}

    if float_colour[4] ~= 1 then
        rgb_colour[4]=float_colour[4]
    end

    for current_position=1,3 do
        rgb_colour[current_position]=math.floor((float_colour[current_position]*(256/float_colour[4]))-1)
    end

    return rgb_colour
end

function create_gas(required,optional)--Required inputs: gas name, flow colour, default temperature and gas temperature
    optional=optional or              --Optional inputs: emissions multiplier, max temperature, fuel value and specific heat capacity
    {                                            
        max_temperature=required.default_temperature,
        emissions_multiplier=1,
        fuel_value="0J",
        heat_capacity="0.1KJ",
    }

    local fluid_prototype=
    {                     
        icon="__highfleet-ships__/graphics/icons/"..required.name..".png",
        icon_size=64,
        type="fluid",
        name=required.name,
        subgroup="fluid",
        base_color={},
        flow_color=required.flow_color,
        default_temperature=required.default_temperature,
        gas_temperature=required.gas_temperature,
        max_temperature=optional.max_temperature,
        emissions_multiplier=optional.emissions_multiplier,
        fuel_value=optional.fuel_value,
        heat_capacity=optional.heat_capacity,
    }

    for current_key,current_value in ipairs(required.flow_color) do
        table.insert(fluid_prototype.base_color,math.floor(0.5*current_value))
    end

    return fluid_prototype
end

data:extend({--  Fluids
    {--  Refined Fuel
        icon="__highfleet-ships__/graphics/icons/refined-fuel.png",
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
        autobarrel=true
    },

    create_gas({--  Crude Fuel
        name="crude-fuel",
        flow_color={255,81,81},
        default_temperature=15,
        gas_temperature=-45
    },
    {
        max_temperature=15,
        emissions_multiplier=2,
        fuel_value="5KJ",
        heat_capacity="0.5KJ",
    }),

    create_gas({-- Ethylene Gas
        name="ethylene-gas",
        flow_color={140,255,140},
        default_temperature=15,
        gas_temperature=-104
    },
    {
        max_temperature=15,
        emissions_multiplier=0.25,
        fuel_value="2KJ",
        heat_capacity="0.2KJ",
    }),

    create_gas({-- Light Gas
        name="light-gas",
        flow_color=float_to_rgb({1,0.73,0.07}),
        default_temperature=15,
        gas_temperature=-5
    },
    {
        max_temperature=15,
        emissions_multiplier=1,
        fuel_value="1KJ",
        heat_capacity="0.1KJ",
    }),

    create_gas({-- Heavy Gas
        name="heavy-gas",
        flow_color={255,180,89},
        default_temperature=15,
        gas_temperature=-42
    },
    {
        max_temperature=15,
        emissions_multiplier=1.5,
        fuel_value="3KJ",
        heat_capacity="0.3KJ",
    }),
})
