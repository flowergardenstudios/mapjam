execute as @e[tag=_game.LabDoor.Lab1] at @s unless entity @p[distance=..30] run function game:doors/lab/1/summon
execute as @e[tag=_game.LabDoor.Lab2] at @s unless entity @p[distance=..30] run function game:doors/lab/2/summon
execute as @e[tag=_game.LabDoor.Lab3] at @s unless entity @p[distance=..30] run function game:doors/lab/3/summon

schedule function game:doors/schedule 5s replace