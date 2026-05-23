tag @s remove _items.heating_stove.IsCooking
tag @s add _items.heating_stove.FinishedCooking

data modify entity @n[tag=_items.heating_stove.text_display, predicate=game:id/items, type=text_display] text set value "Cooking Complete."
playsound block.note_block.pling block @a ~ ~ ~ 0.2 2
playsound block.lava.extinguish block @a ~ ~ ~ 1 2
execute as @n[tag=_items.heating_stove.item_display, predicate=game:id/items, type=item_display] at @s run function game:items/as_item/heating_stove/logic/replace_item