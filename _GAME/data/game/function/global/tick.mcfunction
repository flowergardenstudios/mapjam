# // As Player
execute as @a at @s run function game:player/as_player
# // As Submarine
# execute as @e[tag=_submarine.root] at @s run function game:submarine/tick
execute as @e[type=interaction] at @s run function game:entities/as_interaction



# // As Items
function game:items/tick
