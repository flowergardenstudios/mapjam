item replace entity @s contents with stick[\
     item_name={"text":"Propeller", color:"yellow"}, \
     lore=[{"text":"A Submarine Part.", color:"gray", italic:false}], \
     item_model="mapjam:propeller" \
]

scoreboard players add SubmarineSpawnedItems items.Values 1
tag @s add spawnedItem
