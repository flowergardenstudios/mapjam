loot replace entity @s contents loot game:items/submarine_parts/navigation_module
scoreboard players set SubmarinePartsCount items.Values 3
tellraw @a[tag=debug] "[ItemSpawner] Spawned 'Navigation Module' Submarine Part"

tag @s add _game.ItemSpawner.SpawnedItem
