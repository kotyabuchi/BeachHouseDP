tag @s remove grilling
tag @s add grilled
summon minecraft:interaction ^ ^0.2 ^-0.05 {Tags:[griddle_food, stick_food, grilled],width:0.15f,height:0.15f}
summon minecraft:interaction ^ ^0.05 ^-0.05 {Tags:[griddle_food, stick_food, grilled],width:0.15f,height:0.15f}
summon minecraft:interaction ^ ^-0.1 ^-0.05 {Tags:[griddle_food, stick_food, grilled],width:0.15f,height:0.15f}
summon minecraft:interaction ^ ^-0.25 ^-0.05 {Tags:[griddle_food, stick_food, grilled],width:0.15f,height:0.15f}
summon minecraft:interaction ^ ^-0.4 ^-0.05 {Tags:[griddle_food, stick_food, grilled],width:0.15f,height:0.15f}
summon minecraft:text_display ^ ^ ^0.3 {Tags: [grilled], text:'{"text":"！", "color":"#FF0000"}', billboard:"center", background: 16777215, default_background: false, see_through:true}
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.2 0.6
particle minecraft:white_smoke ~ ~0.1 ~ 0.15 0 0.15 0 10 force @a
execute store result score @s custom_model_data run data get entity @s item.components."minecraft:custom_model_data" 1
scoreboard players add @s custom_model_data 1
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s custom_model_data