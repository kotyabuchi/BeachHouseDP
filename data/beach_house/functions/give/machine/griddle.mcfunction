execute if entity @s[type=player] run tag @s add give_machine
give @a[tag=give_machine] minecraft:item_frame[minecraft:item_name='{"text": "グリドル"}',minecraft:lore=['["",{"text":"様々な物を焼ける。","italic":false,"color":"gray"}]','[""]','["",{"text":"設置可能: ","italic":false,"color":"gray"},{"text":"作業台","italic":false,"color":"white"}]'],minecraft:hide_additional_tooltip={},entity_data={id:"minecraft:item_frame",Fixed:true,Silent:true,Tags:[griddle,machine,width2, half]},minecraft:can_place_on={show_in_tooltip:false,predicates:[{blocks:"minecraft:dark_oak_planks"},{blocks:"minecraft:quartz_block"}]},minecraft:custom_model_data=6,minecraft:custom_data={type:placeable}]
execute as @a[tag=give_machine] run tag @s remove give_machine