execute if entity @s[type=player] run tag @s add give_machine
give @a[tag=give_machine] minecraft:item_frame[entity_data={id:"minecraft:item_frame",Fixed:true,Silent:true,Tags:[juice_server,machine]},minecraft:can_place_on={predicates:[{blocks:"minecraft:dark_oak_planks"},{blocks:"minecraft:quartz_block"}]},minecraft:custom_model_data=5,minecraft:custom_data={type:placeable}]
execute as @a[tag=give_machine] run tag @s remove give_machine