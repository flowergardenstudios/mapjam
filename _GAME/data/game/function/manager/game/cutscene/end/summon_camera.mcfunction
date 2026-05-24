function animated_java:camera/remove/all
execute positioned ~ ~ ~ rotated as @s run function animated_java:camera/summon {args:{}}
execute as @n[tag=_game.Camera] run function animated_java:camera/as_camera {'name':'camera','command': "function game:manager/game/cutscene/wakeup/spectate"}
execute as @n[tag=_game.Camera] run function animated_java:camera/animations/end_cutscene/play