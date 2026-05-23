# Submarine Root
summon mannequin ~ ~ ~ {Tags:[_submarine.root, _submarine.new], data: {name: "Submarine:Root"}}
summon item_display ~ ~ ~ {Tags:[_submarine.body, _submarine.new]}
summon item_display ~ ~ ~ {Tags:[_submarine.pilot_seat, _submarine.new], data:{name:"Submarine:PilotSeat"}}

scoreboard players operation @e[tag=_submarine.new] submarine.ID = .global submarine.ID
scoreboard players add .global submarine.ID 1
tag @e[tag=_submarine.new] remove _submarine.new

scoreboard players set @s submarine.Velocity 0
