# -8 65 3
item replace block ~ ~ ~ container.0 with minecraft:player_head[ \
     minecraft:custom_data={diver_helmet: true}, \
     minecraft:attribute_modifiers=[{"type":"jump_strength", amount: -1, slot:"head", "operation":"add_multiplied_total", id:"1"}, {type:"movement_speed", amount: -0.3, slot:'head', operation:"add_multiplied_total", id:"1"}, {id:"1","type":"water_movement_efficiency", amount:0.6, slot:'head', operation:"add_multiplied_total"}], \
     minecraft:custom_name={text:"Diver Helmet",italic:false},\
     minecraft:lore=[{"text": "Heavy Helmet, Helps Breathe Underwater", "color":"gray", "italic": false}], \
     profile={\
          properties:[\
               {\
                    name:"textures",\
                    value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzY3NDk0NDk3Yzk5OGU0NTcxMTlkYzI3YjY1ZDBlNzA2NmVjM2M1N2M1ZTNiYjVhMzU1NDNjNjVkMjQyODI0NSJ9fX0="\
               }\
          ]\
     }\
] 1

