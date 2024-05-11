say click
advancement revoke @s only beach_house:clicked_machine

#region 撤去
execute if items entity @s weapon.* minecraft:diamond_sword[minecraft:custom_data~{tool_type:removal}] run tag @s add remover
execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] at @s on target if entity @s[tag=remover] run say try removal
# 横長の機械をクリックした場合
execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] at @s on target if entity @s[tag=remover] align xyz positioned ~ ~-0.5 ~ at @e[predicate=beach_house:is_machine_part, dx=0, dy=1, dz=0] positioned ^ ^-0.3 ^1 align xyz as @e[predicate=beach_house:is_displayed_machine, dx=0, dy=1, dz=0] at @s align xyz positioned ~ ~-0.3 ~ if function beach_house:removal/removal_machines as @a[tag=removal] run function beach_house:removal/result/can_not_removal_working_machine
# 機械をクリックした場合
execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] at @s on target if entity @s[tag=remover] align xyz positioned ~ ~-0.5 ~ as @e[predicate=beach_house:is_displayed_machine, dx=0, dy=1, dz=0] at @s align xyz positioned ~ ~-0.3 ~ if function beach_house:removal/removal_machines as @a[tag=removal] run function beach_house:removal/result/can_not_removal_working_machine
tag @s remove remover
#endregion

#region 機械別アクション
# Beer Server
execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/beer_server/is_beer_server_tap] run function beach_house:click_action/beer_server/tap
# Juice Server
execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/juice_server/is_juice_server_tap] run function beach_house:click_action/juice_server/tap 
# Griddle
execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/griddle/is_griddle_plate] run function beach_house:click_action/griddle/plate 
# Cooler Box
# execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, tag=cooler_box] 
#endregion
execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] run data remove entity @s interaction