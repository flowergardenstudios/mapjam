loot replace entity @s contents loot game:items/submarine_parts/propeller
scoreboard players set SubmarinePartsCount items.Values 4
tellraw @a[tag=debug] "[ItemSpawner] Spawned 'Propeller' Submarine Part"

tag @s add _game.ItemSpawner.SpawnedItem
