execute as @e[predicate=game:id/submarine, type=item_display] store success entity @s OnGround byte 1 run data modify entity @s OnGround set value 1b

execute at @s run tp @n[tag=_submarine.pilot_seat, predicate=game:id/submarine] ^0.9 ^-0.25 ^2.2
execute at @s run tp @n[tag=_submarine.body, predicate=game:id/submarine] ^ ^ ^ ~ ~

execute as @e[predicate=game:id/submarine, type=item_display] run data modify entity @s teleport_duration set value 1