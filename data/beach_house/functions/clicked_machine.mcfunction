say click
advancement revoke @s only beach_house:clicked_machine

#region 撤去
tag @s[nbt={SelectedItem:{tag:{type:removal_tool}}}] add remover
execute as @s[tag=remover] run say clicked with removal tool

execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] at @s on target if entity @s[tag=remover] align xyz as @e[type=item_display, tag=machine, dx=0, dy=0, dz=0] run function beach_house:removal/removal_machines
#endregion

#region 機械別アクション
# Beer Server
execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/beer_server/is_beer_server_tap] run function beach_house:click_action/beer_server/tap
# Juice Server
execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/juice_server/is_juice_server_tap] run function beach_house:click_action/juice_server/tap 
# Griddle
# execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, tag=griddle] 
# Cooler Box
# execute unless entity @s[tag=remover] if entity @e[predicate=beach_house:is_clicked_interaction, tag=cooler_box] 
#endregion
execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] run data remove entity @s interaction