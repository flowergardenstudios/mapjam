execute if entity @n[tag=_items.heating_stove.FinishedCooking, type=marker, tag=_items.heating_stove, predicate=game:id/items] run return run function game:items/as_item/heating_stove/logic/drop_item
execute if entity @n[tag=_items.heating_stove.IsCooking, type=marker, predicate=game:id/items] on target run function game:items/as_item/heating_stove/logic/oven_full

execute on target unless items entity @s weapon.mainhand #game:heating_stove/cookable run return run function game:items/as_item/heating_stove/logic/cant_cook_this
execute on target if items entity @s weapon.mainhand #game:heating_stove/cookable run function game:items/as_item/heating_stove/logic/can_cook

data remove entity @s interaction
data remove entity @s attack

