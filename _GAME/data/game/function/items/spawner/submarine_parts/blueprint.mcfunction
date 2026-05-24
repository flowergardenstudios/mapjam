item replace entity @s contents with stick[\
     item_name={"text":"Blueprint", color:"yellow"}, \
     lore=[{"text":"A Submarine Part.", color:"gray", italic:false}, {"text": "Items Needed: ", color:"gray", italic:false}, {"text":"- Blueprint", color:"gray", italic:false}, {"text":"- Scrap Metal", color:"gray", italic:false}, {"text":"- Navigation Module", color:"gray", italic:false}, {"text":"- Old Engine", color:"gray", italic:false}, {"text":"- Propeller", color:"gray", italic:false}], \
     item_model="mapjam:blueprint" \
]

scoreboard players add SubmarineSpawnedItems items.Values 1
tag @s add spawnedItem
