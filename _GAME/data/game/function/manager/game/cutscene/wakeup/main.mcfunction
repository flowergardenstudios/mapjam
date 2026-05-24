
function aj:camera/remove/all
execute positioned ~ ~ ~ rotated ~ 0 run function aj:camera/summon {args:{}}
gamemode spectator @a
execute as @n[tag=_game.Camera] run function aj:camera/as_camera {'name':'camera','command': "function game:manager/game/cutscene/wakeup/spectate"}

