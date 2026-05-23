execute as @n[tag=_items.heating_stove, predicate=game:id/items] run scoreboard players operation @s HeatingStoveTime = @s HeatingStoveCookTime
execute as @n[tag=_items.heating_stove, predicate=game:id/items] run tag @s add _items.heating_stove.IsCooking
execute as @n[tag=_items.heating_stove.text_display, predicate=game:id/items] run data modify entity @s text set value [{"text": "Cooking.."}]

item replace entity @n[tag=_items.heating_stove.item_display, predicate=game:id/items] contents from entity @s weapon.mainhand
data modify entity @n[tag=_items.heating_stove.item_display, predicate=game:id/items] item.count set value 1
data modify storage game:storage _arguments.item set from entity @n[tag=_items.heating_stove.item_display] item
function game:items/as_item/heating_stove/logic/remove_from_player with storage game:storage _arguments.item
