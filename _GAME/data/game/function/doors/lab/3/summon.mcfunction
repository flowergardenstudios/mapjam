execute as @s[tag=_game.LabDoor.Animating] run return fail
execute as @s[tag=_game.LabDoor.Lab3] at @s as @n[tag=aj.ld.root,distance=..1] run function animated_java:ld/remove/this
execute as @s[tag=_game.LabDoor.Lab3] at @s rotated 180 0 run function animated_java:ld/summon {args:{}}
execute as @s[tag=_game.LabDoor.Lab3, scores={door.IsOpen=1}] at @s as @n[tag=aj.ld.root,distance=..1] at @s run return run function animated_java:ld/animations/enter/set_frame {frame: 265}
execute as @s[tag=_game.LabDoor.Lab3, scores={door.IsOpen=0}] at @s as @n[tag=aj.ld.root,distance=..1] at @s run return run function animated_java:ld/animations/exit/set_frame {frame: 265}
execute as @s[tag=_game.LabDoor.Lab3] at @s as @n[tag=aj.ld.root,distance=..1] at @s run function animated_java:ld/animations/enter/set_frame {frame: 0}
execute as @s[tag=_game.LabDoor.Lab3] run scoreboard players set @s door.IsOpen 1


