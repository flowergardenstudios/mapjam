# // Set Player ID
execute unless score @s player.ID matches -2147483648..2147483647 run function game:player/id/set
