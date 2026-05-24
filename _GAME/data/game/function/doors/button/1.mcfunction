data remove entity @s attack
execute unless data entity @s interaction run return fail
# execute if score @n[tag=aj.ld.root, distance=..10] aj.enter.frame matches 1.. run return run data remove entity @s interaction
# execute if score @n[tag=aj.ld.root, distance=..10] aj.exit.frame matches 1.. run return run data remove entity @s interaction
execute if entity @n[tag=_game.LabDoor.Animating] run return run data remove entity @s interaction

playsound block.note_block.pling master @a ~ ~ ~ 1 1
execute if data entity @s interaction if score @n[tag=_game.LabDoor.Lab1] door.IsOpen matches 1 as @n[tag=aj.ld.root] run function animated_java:ld/animations/enter/play
execute if data entity @s interaction if score @n[tag=_game.LabDoor.Lab1] door.IsOpen matches 0 as @n[tag=aj.ld.root] run function animated_java:ld/animations/exit/play
data remove entity @s interaction
