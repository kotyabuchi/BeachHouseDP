scoreboard players reset @s shaving_rotation_count
scoreboard players reset @s progress
tag @s remove working
tag @s remove with_ice
data modify entity @s item.components."minecraft:custom_model_data" set value 2
execute as @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] run data modify entity @s item.components."minecraft:custom_model_data" set value 4
tag @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] add shaved_ice