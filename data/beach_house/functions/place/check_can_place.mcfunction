say place
tag @s add placer
execute store result score @s direction run data get entity @s Rotation[0]
scoreboard players operation @s direction += FloorAngle direction
scoreboard players operation @s direction /= Direction direction
scoreboard players operation @s direction *= Direction direction
scoreboard players operation @s direction += Reverse direction

#region 機械類
execute at @e[predicate=beach_house:is_mechine_frame] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run tag @s add machine_base
execute as @e[predicate=beach_house:is_machine_base] at @s run function beach_house:set_direction
execute if entity @e[predicate=beach_house:is_wide_mechine_frame] at @e[predicate=beach_house:is_machine_base] positioned ^1 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run function beach_house:place/place_machine_part

# 設置位置の土台チェック
# 　半ブロ機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_mechine_frame, tag=half] at @e[predicate=beach_house:is_machine_base] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:half_machine_placeable run function beach_house:place/result/can_not_place_invalid_block
# 　卓上設置機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_mechine_frame, tag=!half, tag=desktop_machine] at @e[predicate=beach_house:is_machine_base] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:desktop_machine_placeable run function beach_house:place/result/can_not_place_invalid_block
# 　床設置機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_mechine_frame, tag=!half, tag=floor_machine] at @e[predicate=beach_house:is_machine_base] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:floor_machine_placeable run function beach_house:place/result/can_not_place_invalid_block
# 　横長の半ブロ機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame, tag=half] at @e[predicate=beach_house:is_machine_part, tag=not_setup] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:half_machine_placeable run function beach_house:place/result/can_not_place_invalid_block
# 　横長の卓上設置機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame, tag=!half, tag=desktop_machine] at @e[predicate=beach_house:is_machine_part, tag=not_setup] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:desktop_machine_placeable run function beach_house:place/result/can_not_place_invalid_block
# 　横長の床設置機械
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame, tag=!half, tag=floor_machine] at @e[predicate=beach_house:is_machine_part, tag=not_setup] positioned ~ ~-1 ~ unless block ~ ~ ~ #beach_house:floor_machine_placeable run function beach_house:place/result/can_not_place_invalid_block

# 横長の機械の空間チェック
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame] at @e[predicate=beach_house:is_machine_part, tag=not_setup] unless block ~ ~ ~ air run function beach_house:place/result/can_not_place_in_block

# 設置済みチェック
execute unless entity @s[tag=failed_place] at @e[predicate=beach_house:is_machine_base] align xyz if entity @e[predicate=beach_house:is_displayed_machine, dx=0, dy=0, dz=0] run function beach_house:place/result/already_placed
execute unless entity @s[tag=failed_place] at @e[predicate=beach_house:is_machine_base] align xyz if entity @e[predicate=beach_house:is_machine_part, tag=!not_setup, dx=0, dy=0, dz=0] run function beach_house:place/result/already_placed
# 横長の機械の設置済みチェック
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame] at @e[predicate=beach_house:is_machine_part, tag=not_setup] align xyz if entity @e[predicate=beach_house:is_displayed_machine, dx=0, dy=0, dz=0] run function beach_house:place/result/already_placed
execute unless entity @s[tag=failed_place] if entity @e[predicate=beach_house:is_wide_mechine_frame] at @e[predicate=beach_house:is_machine_part, tag=not_setup] align xyz if entity @e[predicate=beach_house:is_machine_part, tag=!not_setup, dx=0, dy=0, dz=0] run function beach_house:place/result/already_placed

execute unless entity @s[tag=failed_place] as @e[predicate=beach_house:is_machine_base] run function beach_house:place/place_machines
execute if entity @s[tag=failed_place, gamemode=!creative] run function beach_house:give/return_machine

kill @e[predicate=beach_house:is_machine_base]
kill @e[predicate=beach_house:is_machine_part, tag=not_setup]
kill @e[predicate=beach_house:is_mechine_frame]
#endregion

#region 小物類
execute at @e[predicate=beach_house:placeable/is_placeable_frame] align xyz positioned ~0.5 ~-100 ~0.5 summon item_display run data modify entity @s Tags set value [placeable, not_init]
execute as @e[predicate=beach_house:placeable/is_not_init_placeable] at @s run function beach_house:set_direction
execute as @e[predicate=beach_house:placeable/is_placeable_frame, tag=syrup] at @s run function beach_house:place/syrup/put_syrup
execute as @e[predicate=beach_house:placeable/is_not_init_placeable] at @s run tp ~ ~100 ~
execute as @e[predicate=beach_house:placeable/is_not_init_placeable] run tag @s remove not_init

kill @e[predicate=beach_house:placeable/is_placeable_frame]
#endregion
tag @s remove placer
tag @s remove failed_place
advancement revoke @s only beach_house:place_placeable