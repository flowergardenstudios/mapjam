execute as @e[tag=_game.LabDoor.Button, type=interaction] at @s run function game:doors/button/main

execute as @e[tag=_game.LabDoor.Lab1, scores={door.IsOpen=1}] at @s run function game:doors/open
execute as @e[tag=_game.LabDoor.Lab2, scores={door.IsOpen=1}] at @s run function game:doors/open
execute as @e[tag=_game.LabDoor.Lab3, scores={door.IsOpen=1}] at @s run function game:doors/open

execute as @e[tag=_game.LabDoor.Lab1, scores={door.IsOpen=0}] at @s run function game:doors/close
execute as @e[tag=_game.LabDoor.Lab2, scores={door.IsOpen=0}] at @s run function game:doors/close
execute as @e[tag=_game.LabDoor.Lab3, scores={door.IsOpen=0}] at @s run function game:doors/close
