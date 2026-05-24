item replace entity @s armor.head with air
gamemode adventure @a
clear @a
execute as @a in minecraft:overworld run tp @s -6.52 43.00 -6.52 359.53 -2.40
function aj:camera/remove/all
scoreboard players reset @a leaveGame