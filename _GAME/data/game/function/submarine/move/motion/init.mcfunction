# Unit Vector
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:[_submarine.MotionVector]}
rotate @n[tag=_submarine.MotionVector] ~ ~

# Multiply Velocity Value
execute store result storage game:storage _arguments.vel float 0.001 run scoreboard players get @s submarine.Velocity
execute store result storage game:storage _arguments.vert_vel float 0.001 run scoreboard players get @s submarine.VerticalVelocity
execute as @e[tag=_submarine.MotionVector, type=marker] at @s rotated as @s run function game:submarine/move/motion/apply with storage game:storage _arguments
data modify entity @s Motion set from storage game:storage _data.velocity

# Kill Motion Vector
kill @e[tag=_submarine.MotionVector]