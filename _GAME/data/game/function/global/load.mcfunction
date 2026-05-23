# Game Values
scoreboard objectives add _G.Values dummy
scoreboard players reset * _G.Values
scoreboard players set DayTime _G.Values 24000

# Initialize Everything
function game:player/init/main
function game:submarine/init
# // As Items
function game:items/load