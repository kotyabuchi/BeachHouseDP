# 鉄板の音
scoreboard players operation @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:machines/is_working_machine] progress %= 100 constant
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:machines/is_working_machine] run scoreboard players operation @s tmp = @s progress
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:machines/is_working_machine] at @s if score @s tmp matches 0 run playsound block.blastfurnace.fire_crackle master @a ~ ~ ~ 0.4 0.7
scoreboard players operation @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:machines/is_working_machine] tmp %= 5 constant
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate, predicate=beach_house:machines/is_working_machine] at @s if score @s tmp matches 0 run particle minecraft:white_smoke ~ ~0.1 ~ 0.24 0.1 0.24 0 1 force @a

# グリル中の食べ物の進行度増加
execute as @e[predicate=beach_house:food/is_grilling_food] run scoreboard players add @s progress 1
# 半分焼けたらひっくり返し待ち
execute as @e[predicate=beach_house:food/is_grilling_food] at @s if score @s progress matches 200 run function beach_house:machine_operation/griddle/waiting_flip
# 完全に焼けたら取り待ち
execute as @e[predicate=beach_house:food/is_grilling_food] at @s if score @s progress matches 400 run function beach_house:machine_operation/griddle/grilled