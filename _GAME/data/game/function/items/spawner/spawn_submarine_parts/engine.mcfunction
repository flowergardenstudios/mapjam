loot replace entity @s contents loot game:items/submarine_parts/engine
scoreboard players set SubmarinePartsCount items.Values 1
tellraw @a[tag=debug] "[ItemSpawner] Spawned 'Old Engine' Submarine Part"

tag @s add _game.ItemSpawner.SpawnedItem
