# // Accelerate/Deaccelerate.
execute if predicate game:input/w as @n[tag=_submarine.root, predicate=game:id/submarine] unless score @s submarine.Velocity >= VelocityMax submarine.BaseValues run scoreboard players operation @s submarine.Velocity += Acceleration submarine.BaseValues
execute if predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] unless score @s submarine.Velocity <= VelocityMax submarine.BaseValues run scoreboard players operation @s submarine.Velocity -= Acceleration submarine.BaseValues

# // Rotate
execute if predicate game:input/a unless predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] rotated as @s run rotate @s ~-2.3 0
execute if predicate game:input/d unless predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] rotated as @s run rotate @s ~2.3 0
execute if predicate game:input/a if predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] rotated as @s run rotate @s ~2.3 0
execute if predicate game:input/d if predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] rotated as @s run rotate @s ~-2.3 0

# Rotate Passengers
execute if predicate game:input/a unless predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] on passengers rotated as @s run rotate @s ~-2.3 ~
execute if predicate game:input/d unless predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] on passengers rotated as @s run rotate @s ~2.3 ~
execute if predicate game:input/a if predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] on passengers rotated as @s run rotate @s ~2.3 ~
execute if predicate game:input/d if predicate game:input/s as @n[tag=_submarine.root, predicate=game:id/submarine] on passengers rotated as @s run rotate @s ~-2.3 ~


# // Up and Down
execute if predicate game:input/space as @n[tag=_submarine.root, predicate=game:id/submarine] run tp @s ~ ~0.1 ~
execute if predicate game:input/sprint as @n[tag=_submarine.root, predicate=game:id/submarine] run tp @s ~ ~-0.1 ~