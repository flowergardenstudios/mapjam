execute if items entity @s contents * run return fail

scoreboard players operation #ID items.ID = @s items.ID
kill @e[type=!marker, predicate=game:id/items]
