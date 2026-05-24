scoreboard players operation #ID items.ID = @s items.ID

execute as @n[predicate=game:id/items, type=item_display] if score SubmarineSpawnedItems items.Values matches 0 run return run function game:items/spawner/submarine_parts/engine
execute as @n[predicate=game:id/items, type=item_display] if score SubmarineSpawnedItems items.Values matches 1 run return run function game:items/spawner/submarine_parts/blueprint
execute as @n[predicate=game:id/items, type=item_display] if score SubmarineSpawnedItems items.Values matches 2 run return run function game:items/spawner/submarine_parts/propeller
execute as @n[predicate=game:id/items, type=item_display] if score SubmarineSpawnedItems items.Values matches 3 run return run function game:items/spawner/submarine_parts/navigation_module
