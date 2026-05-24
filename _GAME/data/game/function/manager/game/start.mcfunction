time set day

# // Spawn Common/Rare Items
execute as @e[tag=_marker.ItemSpawner, type=marker] at @s run function game:items/spawner/spawn_item
execute as @e[tag=_marker.SubmarinePartSpawner,sort=random,limit=1, tag=!spawnedItem] at @s if score SubmarineSpawnedItems items.Values matches 0 run function game:items/spawner/submarine_parts/spawn
execute as @e[tag=_marker.SubmarinePartSpawner,sort=random,limit=1, tag=!spawnedItem] at @s if score SubmarineSpawnedItems items.Values matches 1 run function game:items/spawner/submarine_parts/spawn
execute as @e[tag=_marker.SubmarinePartSpawner,sort=random,limit=1, tag=!spawnedItem] at @s if score SubmarineSpawnedItems items.Values matches 2 run function game:items/spawner/submarine_parts/spawn
execute as @e[tag=_marker.SubmarinePartSpawner,sort=random,limit=1, tag=!spawnedItem] at @s if score SubmarineSpawnedItems items.Values matches 3 run function game:items/spawner/submarine_parts/spawn


# // Kill Empty Interactions
execute as @e[tag=_game.ItemSpawner.ItemDisplay, type=item_display] at @s run function game:items/spawner/kill_empty
# // Starting Loot
execute positioned -8 65 3 run function game:items/as_item/scuba_gear/spawn

execute as @e[tag=_marker.PlayerSpawner, sort=random, limit=1] at @s rotated as @s run function game:manager/game/cutscene/wakeup/main
