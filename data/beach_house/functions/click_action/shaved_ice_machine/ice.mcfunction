# 氷を持ってクリック
execute if items entity @s weapon.mainhand minecraft:ice as @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction] at @s run tag @s add clicked_with_ice
# 設置済みチェック
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=clicked_with_ice] at @s positioned ^ ^-0.03 ^-0.05 if entity @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=!with_ice, distance=..0.01] run tag @s add put_ice
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=put_ice] at @s positioned ^ ^-0.03 ^-0.05 as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=!with_ice, distance=..0.01] run data merge entity @s {Tags:[machine,shaved_ice_machine_handle,with_ice],item:{components:{"minecraft:custom_model_data":8}}}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=put_ice] on target run clear @s minecraft:ice 1

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=put_ice] at @s positioned ^ ^-0.03 ^-0.05 if entity @e[predicate=beach_house:food/is_display_bowl, tag=!shaved_ice, distance=..0.01] as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, distance=..0.01] at @s run function beach_house:machine_operation/shaved_ice_machine/start_shaving

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=clicked_with_ice] run tag @s remove clicked_with_ice
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_ice_interaction, tag=put_ice] run tag @s remove put_ice