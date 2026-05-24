item replace entity @s contents with player_head[\
     item_name="Navigation Module", \
     lore=[{"text":"A Submarine Part.", color:"gray", italic:false}], \
     profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODEyYmVhZTBkZDI3Zjc0MmEwMjY0M2M0NTUwYzY3YjdkZTNlNzYxNmY4MWU4MzcwMTA4ZGFhMDQzOGY4Zjg5OSJ9fX0="}]} \
]

scoreboard players add SubmarineSpawnedItems items.Values 1
tag @s add spawnedItem
