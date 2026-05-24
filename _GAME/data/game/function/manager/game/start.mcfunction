# // Spawn Common/Rare Items
execute as @e[tag=_marker.ItemSpawner, type=marker] at @s run function game:items/spawner/spawn_item
# // Kill Empty Interactions
execute as @e[tag=_game.ItemSpawner.ItemDisplay, type=item_display] at @s run function game:items/spawner/kill_empty

execute as @e[tag=_marker.PlayerSpawner, sort=random, limit=1] at @s rotated as @s run function game:manager/game/cutscene/wakeup/main
