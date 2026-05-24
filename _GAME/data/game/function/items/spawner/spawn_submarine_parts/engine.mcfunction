loot replace entity @s contents loot game:items/submarine_parts/engine
scoreboard players set SubmarineSpawnedItems items.Values 1
tellraw @a[tag=debug] "[ItemSpawner] Spawned 'Old Engine' Submarine Part"

tag @s add _game.ItemSpawner.SpawnedItem
tag @s add _game.ItemSpawner.SubmarinePart.Engine
