execute if entity @s[tag=_game.ItemSpawner.SpawnedItem] run return fail
scoreboard players operation #ID items.ID = @s items.ID
tag @s add _marker.SubmarinePart
execute if score SubmarineSpawnedItems items.ID matches 0 run return run function game:items/spawner/spawn_submarine_parts/engine
execute if score SubmarineSpawnedItems items.ID matches 1 run return run function game:items/spawner/spawn_submarine_parts/blueprint
execute if score SubmarineSpawnedItems items.ID matches 2 run return run function game:items/spawner/spawn_submarine_parts/navigation_module
execute if score SubmarineSpawnedItems items.ID matches 3 run return run function game:items/spawner/spawn_submarine_parts/propeller
