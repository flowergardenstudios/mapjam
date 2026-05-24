# FROM: function game:items/spawner/spawn_item
# MACROS: $(X) $(Y)
$rotate @s $(X) $(Y)
$data modify entity @s transformation.scale set value [$(scale)f,$(scale)f,$(scale)f]
