data:extend({--  Item Groups
    {-- Refined Fuel Production Item Group
        name="refined-fuel-production",
        type="item-group",
        order="ca",
        icon="__highfleet-ships__/graphics/icons/refined-fuel.png",
        icon_size=64
    },  
    {-- Fuel Production Subgroup
        name="fuel-production",
        type="item-subgroup",
        group="refined-fuel-production"
    },      
    {-- Catalyst Item Subgroup
        name="catalysts",
        type="item-subgroup",
        group="intermediate-products",
        order="ga"
    },    
})
