
# Base Acceleration Values (x1000)
scoreboard objectives add submarine.BaseValues dummy
     scoreboard players set Acceleration submarine.BaseValues 20
     scoreboard players set Drag submarine.BaseValues 10

     scoreboard players set VelocityMax submarine.BaseValues 200
     scoreboard players set VelocityMin submarine.BaseValues -200
     scoreboard players set VerticalVelocityMax submarine.BaseValues 40
     scoreboard players set VerticalVelocityMin submarine.BaseValues -40
     

# Other Values (x1000)
scoreboard objectives add submarine.Velocity dummy
scoreboard objectives add submarine.VerticalVelocity dummy

# Submarine ID 
scoreboard objectives add submarine.ID dummy
scoreboard players add .global submarine.ID 1