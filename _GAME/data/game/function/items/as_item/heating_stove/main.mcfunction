scoreboard players operation #ID items.ID = @s items.ID


# // Check Interaction:
execute as @e[tag=_items.heating_stove.interaction, predicate=game:id/items] at @s if data entity @s interaction run function game:items/as_item/heating_stove/logic/main
execute as @e[tag=_items.heating_stove.interaction, predicate=game:id/items] at @s if data entity @s attack run function game:items/as_item/heating_stove/remove

# Cook Timer
execute unless entity @s[tag=_items.heating_stove.IsCooking] run return fail
execute as @s[scores={HeatingStoveTime=1..}] run return run scoreboard players remove @s HeatingStoveTime 1
function game:items/as_item/heating_stove/logic/complete_cooking
