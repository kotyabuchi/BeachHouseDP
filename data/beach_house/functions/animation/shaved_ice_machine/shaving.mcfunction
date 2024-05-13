scoreboard players operation @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] progress %= 20 constant
execute at @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] run particle snowflake ~ ~ ~ ^ ^-20000000 ^ 0.000000001 0 force @a
# 1/4
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 0 run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.5708f}},start_interpolation:0}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 0 as @e[predicate=beach_house:food/is_display_ice, distance=..0.01] at @s run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.5708f}},start_interpolation:0}
# 2/4
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 5 run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:3.1415f}},start_interpolation:0}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 5 as @e[predicate=beach_house:food/is_display_ice, distance=..0.01] at @s run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:3.1415f}},start_interpolation:0}
# 3/4
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 10 run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:4.7122f}},start_interpolation:0}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 10 as @e[predicate=beach_house:food/is_display_ice, distance=..0.01] at @s run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:4.7122f}},start_interpolation:0}
# 4/4
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 15 run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:0f}},start_interpolation:0}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 15 as @e[predicate=beach_house:food/is_display_ice, distance=..0.01] at @s run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:0f}},start_interpolation:0}

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] at @s if score @s progress matches 0 run scoreboard players add @s shaving_rotation_count 1

# 1段階
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] if score @s shaving_rotation_count matches 1 at @s as @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] run data modify entity @s item set value {count: 1, id:"minecraft:apple", components:{"minecraft:custom_model_data":1}}
# 2段階
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] if score @s shaving_rotation_count matches 2 at @s as @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] run data modify entity @s item.components."minecraft:custom_model_data" set value 2
# 3段階
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] if score @s shaving_rotation_count matches 3 at @s as @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] run data modify entity @s item.components."minecraft:custom_model_data" set value 3
# 完成
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=working] if score @s shaving_rotation_count matches 4 at @s run function beach_house:machine_operation/shaved_ice_machine/shaved_ice