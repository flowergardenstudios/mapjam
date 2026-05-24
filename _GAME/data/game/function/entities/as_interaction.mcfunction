execute as @s[tag=_game.ItemSpawner.Interaction] if data entity @s interaction run return run function game:items/spawner/give
execute as @s[tag=_game.ItemSpawner.Interaction] if data entity @s attack run return run function game:items/spawner/give
