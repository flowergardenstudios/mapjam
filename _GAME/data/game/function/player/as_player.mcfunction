# // Set Player ID
execute if score @s leaveGame matches 1.. run function game:manager/game/return_to_start


execute unless score @s player.ID matches -2147483648..2147483647 run function game:player/id/set
execute if items entity @s container.* dirt[item_model="mapjam:submarine", custom_data~{submarine: true}] run function game:manager/game/cutscene/end/main
