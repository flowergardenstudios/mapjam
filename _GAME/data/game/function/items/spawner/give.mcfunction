scoreboard players operation #ID items.ID = @s items.ID

# // If Holding Item, Tell them their hands are full.
execute on target if items entity @s weapon.mainhand * run return run function game:items/spawner/cant_pickup
execute on attacker if items entity @s weapon.mainhand * run return run function game:items/spawner/cant_pickup

execute on target run item replace entity @s weapon.mainhand from entity @n[tag=_game.ItemSpawner.ItemDisplay, predicate=game:id/items] contents
execute on attacker run item replace entity @s weapon.mainhand from entity @n[tag=_game.ItemSpawner.ItemDisplay, predicate=game:id/items] contents

# // KILL Interaction/ItemDisplay
kill @e[predicate=game:id/items, type=!marker]

# data remove entity @s interaction
# data remove entity @s attack