title @s actionbar {"text":"Oven is Full!", "color":"#CF0000"}

playsound block.note_block.bass ui @s ~ ~ ~ 1 1

execute as @n[predicate=game:id/items, type=interaction, tag=_items.heating_stove.interaction] run data remove entity @s interaction
