loot replace entity @s contents loot game:items/submarine_parts/blueprint
scoreboard players set SubmarinePartsCount items.Values 2
tellraw @a[tag=debug] "[ItemSpawner] Spawned 'Blueprint' Submarine Part"

tag @s add _game.ItemSpawner.SpawnedItem
