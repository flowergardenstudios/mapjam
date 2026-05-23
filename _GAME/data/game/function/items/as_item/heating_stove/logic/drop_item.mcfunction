tag @n[tag=_items.heating_stove, predicate=game:id/items] remove _items.heating_stove.FinishedCooking
data modify entity @n[tag=_items.heating_stove.text_display, predicate=game:id/items, type=text_display] text set value "Empty"

data remove storage game:storage _arguments
data modify storage game:storage _arguments.item set from entity @n[tag=_items.heating_stove.item_display, predicate=game:id/items] item
function game:items/as_item/heating_stove/logic/summon_item_macro with storage game:storage _arguments
data remove entity @n[tag=_items.heating_stove.item_display, predicate=game:id/items, type=item_display] item

data remove entity @s interaction
data remove entity @s attack
