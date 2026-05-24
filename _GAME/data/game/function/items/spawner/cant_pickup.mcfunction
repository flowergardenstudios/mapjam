title @s actionbar {"text":"Your hands are full!"}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

data remove entity @n[tag=_game.ItemSpawner.Interaction, predicate=game:id/items] interaction
data remove entity @n[tag=_game.ItemSpawner.Interaction, predicate=game:id/items] attack
