tag @s remove clicked_with_stick_food
execute on target run tag @s add use_gridle_player

summon item_display ~ ~-100 ~ {Tags:[food, stick_food, griddle_food, grilling, not_setup, not_setup_direction], item:{count:1, id:"minecraft:apple"}, interpolation_duration: 4, Rotation:[0f, -90f]}
execute as @e[tag=stick_food, tag=not_setup] positioned ~ ~100 ~ run data modify entity @s item.components."minecraft:custom_model_data" set from entity @a[tag=use_gridle_player, sort=nearest, limit=1] SelectedItem.components."minecraft:custom_model_data"
execute as @e[tag=stick_food, tag=not_setup] positioned ~ ~100 ~ run data modify entity @s Tags append from entity @a[tag=use_gridle_player, sort=nearest, limit=1] SelectedItem.components."minecraft:custom_data".food_type
execute as @e[tag=stick_food, tag=not_setup] at @s run tp @s ~ ~100 ~