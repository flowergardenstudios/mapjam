execute as @s[tag=_game.LabDoor.Lab1] run fill -10 40 91 -9 43 91 barrier replace air
execute as @s[tag=_game.LabDoor.Lab1] run fill -10 40 85 -9 43 85 minecraft:water
execute as @s[tag=_game.LabDoor.Lab2] run fill 84 28 -65 84 31 -64 water
execute as @s[tag=_game.LabDoor.Lab2] run fill 90 28 -65 90 31 -64 minecraft:barrier
execute as @s[tag=_game.LabDoor.Lab3] run fill 60 18 -15 59 21 -15 water
execute as @s[tag=_game.LabDoor.Lab3] run fill 59 18 -9 60 21 -9 barrier

fill ^-2 ^2 ^3 ^2 ^-2 ^-3 minecraft:water replace air
