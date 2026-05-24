# AS ITEMSPAWNER_MARKER
# Delete First
function game:items/spawner/delete_all
tag @s remove _game.ItemSpawner.SpawnedItem
scoreboard players set SubmarineSpawnedItems items.Values 0

scoreboard players operation @s items.ID = .global items.ID
summon item_display ~ ~ ~ {Tags:[_game.Item, _game.Item.new, _game.ItemSpawner.ItemDisplay]}
summon interaction ~ ~ ~ {Tags:[_game.Item, _game.Item.new, _game.ItemSpawner.Interaction]}
scoreboard players operation @e[tag=_game.Item.new] items.ID = .global items.ID
tag @e remove _game.Item.new
scoreboard players operation #ID items.ID = @s items.ID
scoreboard players add .global items.ID 1

# // Item Display Random Rotation
data remove storage game:storage _arguments
execute store result storage game:storage _arguments.X float 0.001 run random value -360000..360000
execute store result storage game:storage _arguments.Y int 1 run random value 0..2
execute if data storage game:storage _arguments{Y: 0} run data modify storage game:storage _arguments.Y set value 0 
execute if data storage game:storage _arguments{Y: 1} run data modify storage game:storage _arguments.Y set value -90 
execute if data storage game:storage _arguments{Y: 1} run data modify storage game:storage _arguments.Y set value 90
execute as @n[tag=_game.ItemSpawner.ItemDisplay, predicate=game:id/items] run function game:items/spawner/random_rot_macro with storage game:storage _arguments

# // Spawn Common/Rare/Submarine Parts
data modify storage game:storage _arguments.name set from entity @s data.name
execute as @n[tag=_game.ItemSpawner.ItemDisplay,predicate=game:id/items] at @s if data storage game:storage _arguments{name: "Game:SubmarinePartSpawner"} run return run function game:items/spawner/spawn_submarine_parts/main
execute as @n[tag=_game.ItemSpawner.ItemDisplay,predicate=game:id/items] at @s if data storage game:storage _arguments{name: "Game:RareItemSpawner"} run return run function game:items/spawner/rare_item
execute as @n[tag=_game.ItemSpawner.ItemDisplay,predicate=game:id/items] at @s if data storage game:storage _arguments{name: "Game:CommonItemSpawner"} run return run function game:items/spawner/common_item
