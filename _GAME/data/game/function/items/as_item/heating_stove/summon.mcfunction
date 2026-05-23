setblock ~ ~ ~ barrier
# // Summon Block Display
summon minecraft:block_display ~ ~-0.05 ~ {Tags:[_items.heating_stove.new, "_items.heating_stove.display"], Passengers: [{Tags:[_items.heating_stove.new, "_items.heating_stove.display"], block_state: {Name: "minecraft:scaffolding", Properties: {bottom: "false", distance: "7", waterlogged: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.0f, 0.055714343f, 0.0f, 0.9984468f], right_rotation: [0.0f, -0.055346873f, 0.0f, 0.99846727f], scale: [0.96395326f, 0.88876206f, 0.8884595f], translation: [-0.47828168f, -0.44438055f, -0.44012797f]}}], block_state: {Name: "minecraft:campfire", Properties: {facing: "north", lit: "true", signal_fire: "true", waterlogged: "false"}}, transformation: {left_rotation: [0.0f, 0.05567064f, 0.0f, 0.99844927f], right_rotation: [0.0f, -0.0548622f, 0.0f, 0.99849397f], scale: [0.8763215f, 0.80798155f, 0.80772185f], translation: [-0.4351955f, -0.4039903f, -0.39977518f]}}
summon marker ~ ~ ~ {Tags:[_items.heating_stove.new, _items.heating_stove]}
summon item_display ~ ~0.4 ~ { Tags:[_items.heating_stove.new, _items.heating_stove.item_display], transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.9999999f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}

summon interaction ~ ~-0.5 ~ {width: 1.1f,response: true, Tags:[_items.heating_stove.new, _items.heating_stove.interaction]}
# summon text_display ~ ~1 ~ {view_range: 0.08f, Tags:[_items.heating_stove.new], alignment: "center", background: 0, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Cooker Status", text_opacity: 255}
# summon text_display ~ ~0.75 ~ {view_range: 0.08f, Tags:[_items.heating_stove.new, _items.heating_stove.text_display], alignment: "center", background: 0, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "EMPTY", text_opacity: 255}

scoreboard players operation @e[tag=_items.heating_stove.new] items.ID = .global items.ID
scoreboard players add .global items.ID 1

execute if entity @s[tag=_items.heating_stove.summon, tag=level_1] run scoreboard players operation @n[tag=_items.heating_stove.new, type=marker] HeatingStoveCookTime = Level_1 HeatingStoveCookTime
execute if entity @s[tag=_items.heating_stove.summon, tag=level_2] run scoreboard players operation @n[tag=_items.heating_stove.new, type=marker] HeatingStoveCookTime = Level_2 HeatingStoveCookTime
execute if entity @s[tag=_items.heating_stove.summon, tag=level_3] run scoreboard players operation @n[tag=_items.heating_stove.new, type=marker] HeatingStoveCookTime = Level_3 HeatingStoveCookTime
execute if entity @s[tag=_items.heating_stove.summon, tag=level_1] run data modify entity @n[tag=_items.heating_stove.new, type=marker] data.level set value 1
execute if entity @s[tag=_items.heating_stove.summon, tag=level_2] run data modify entity @n[tag=_items.heating_stove.new, type=marker] data.level set value 2
execute if entity @s[tag=_items.heating_stove.summon, tag=level_3] run data modify entity @n[tag=_items.heating_stove.new, type=marker] data.level set value 3

playsound block.wood.place block @a ~ ~ ~ 1 1

tag @e remove _items.heating_stove.new
kill @s