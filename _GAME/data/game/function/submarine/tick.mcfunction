scoreboard players operation #ID submarine.ID = @s submarine.ID
execute on passengers if entity @s[type=player] run scoreboard players operation @s submarine.ID = @n[predicate=game:id/submarine, tag=_submarine.root] submarine.ID

# Check for Keystrokes.
execute on passengers as @s[predicate=game:id/submarine, type=player] run function game:submarine/move/check

# Apply Drag
execute if score @s submarine.Velocity matches 1.. run scoreboard players operation @s submarine.Velocity -= Drag submarine.BaseValues
execute if score @s submarine.Velocity matches ..-1 run scoreboard players operation @s submarine.Velocity += Drag submarine.BaseValues

execute if score @s submarine.VerticalVelocity matches 1.. run scoreboard players operation @s submarine.VerticalVelocity -= Drag submarine.BaseValues
execute if score @s submarine.VerticalVelocity matches ..-1 run scoreboard players operation @s submarine.VerticalVelocity += Drag submarine.BaseValues

# Apply Velocity.
execute rotated as @s run function game:submarine/move/motion/init
