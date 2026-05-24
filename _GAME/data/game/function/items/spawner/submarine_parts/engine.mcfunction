item replace entity @s contents with player_head[\
     item_name="Old Engine", \
     lore=[{"text":"A Submarine Part.", color:"gray", italic:false}], \
     profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQ0MTA4OGRlZTkxYjE2ZjVmZDlhZWU0ZWE1MGE0ZmFhOTc5Y2U0NGRjYzkwNTI0ZTNkMmUyYTE5NDJlOGE5NyJ9fX0="}]}\
]

scoreboard players add SubmarineSpawnedItems items.Values 1
tag @n[type=marker, predicate=game:id/items] add spawnedItem