# ボウルを持ってクリック
execute if items entity @s weapon.mainhand minecraft:stick[minecraft:custom_data~{type:glass_bowl}] as @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction] at @s run tag @s add clicked_with_bowl
# 設置済みチェック
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=clicked_with_bowl] at @s positioned ^ ^0.5 ^-0.05 unless entity @e[predicate=beach_house:food/is_display_bowl, distance=..0.01] run tag @s add put_bowl
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=put_bowl] at @s positioned ^ ^0.5 ^-0.05 run summon item_display ~ ~ ~ {Tags:[bowl], item:{count:1, id:"minecraft:stick", components:{"minecraft:custom_model_data":5}}, interpolation_duration: 5, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=put_bowl] on target run clear @s minecraft:stick[minecraft:custom_data~{type:glass_bowl}] 1

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=put_bowle] at @s positioned ^ ^0.5 ^-0.05 as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine_handle, tag=with_ice, distance=..0.01] at @s run function beach_house:machine_operation/shaved_ice_machine/start_shaving

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=clicked_with_bowl] run tag @s remove clicked_with_bowl
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, tag=put_bowl] run tag @s remove put_bowl

# 完成したかき氷を取る
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction] at @s positioned ^ ^0.5 ^-0.05 if entity @e[predicate=beach_house:food/is_display_bowl, tag=shaved_ice, distance=..0.01] run function beach_house:click_action/shaved_ice_machine/get_shaved_ice