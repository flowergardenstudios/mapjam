clear @a

gamemode spectator @a
execute as @a run function camera:16_10
execute as @a run title @s times 0s 3s 1s
execute as @a run title @s title {"text":"\uE000"}

time set 12500
execute as @n[tag=_marker.EndCutscene, type=marker] at @s run function game:manager/game/cutscene/end/summon_camera
execute as @n[tag=endCutscene.Submarine] at @s run function game:manager/game/cutscene/end/particles
