# Game Values
scoreboard objectives add _G.Values dummy
scoreboard players reset * _G.Values
scoreboard players set DayTime _G.Values 24000

gamerule advance_time true
gamerule advance_weather true
gamerule mob_drops false
gamerule spawn_mobs false
gamerule mob_griefing false
gamerule send_command_feedback false

scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game

# Initialize Everything
function game:player/init/main
function game:submarine/init
# // As Items
function game:items/load