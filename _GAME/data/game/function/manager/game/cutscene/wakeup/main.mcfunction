
function animated_java:camera/remove/all
execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:camera/summon {args:{}}
gamemode spectator @a
tp @s ~ ~ ~
execute as @n[tag=_game.Camera] run function animated_java:camera/animations/wake_up/play
execute as @n[tag=_game.Camera] run function animated_java:camera/as_camera {'name':'camera','command': "function game:manager/game/cutscene/wakeup/spectate"}

