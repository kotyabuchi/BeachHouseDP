# 持っている食材が棒付き
execute if items entity @s weapon.mainhand minecraft:apple[minecraft:custom_data~{food_style:stick}] as @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/griddle/is_griddle_plate] run tag @s add clicked_with_stick_food
# まだ鉄板で何も焼いていない
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, tag=clicked_with_stick_food] at @s align xyz positioned ~ ~0.5 ~ unless entity @e[type=item_display, tag=food, dx=0, dy=0, dz=0] at @s positioned ^0.25 ^0.06 ^ run function beach_house:click_action/griddle/grill_food/put_stick_food
# まだ右で焼いていない
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, tag=clicked_with_stick_food] at @s positioned ^0.25 ^0.06 ^ unless entity @e[tag=stick_food, distance=..0.1] run function beach_house:click_action/griddle/grill_food/put_stick_food
# まだ真ん中に焼いていない
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, tag=clicked_with_stick_food] at @s positioned ^ ^0.06 ^ unless entity @e[tag=stick_food, distance=..0.1] run function beach_house:click_action/griddle/grill_food/put_stick_food
# まだ左で焼いていない
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, tag=clicked_with_stick_food] at @s positioned ^-0.25 ^0.06 ^ unless entity @e[tag=stick_food, distance=..0.1] run function beach_house:click_action/griddle/grill_food/put_stick_food

# 向き変更
execute as @e[tag=food, tag=not_setup] at @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[predicate=beach_house:machines/griddle/is_griddle_plate, sort=nearest, limit=1] Rotation[0] 1

execute as @e[tag=food, tag=not_setup] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.1 0.8
execute as @e[tag=food, tag=not_setup] at @s run particle minecraft:white_smoke ~ ~0.1 ~ 0.15 0 0.15 0 5 force @a
tag @e[tag=food, tag=not_setup] remove not_setup

execute if entity @s[tag=use_gridle_player] as @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:is_clicked_interaction] run tag @s add working
tag @s remove use_gridle_player
tag @e[tag=clicked_with_stick_food] remove clicked_with_stick_food