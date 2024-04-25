say click
advancement revoke @s only beach_house:clicked_machine

tag @s[nbt={SelectedItem:{tag:{type:removal_tool}}}] add remover
execute as @s[tag=remover] run say clicked with removal tool

execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] at @s on target if entity @s[tag=remover] align xyz as @e[type=item_display, tag=machine, dx=0, dz=0] run function beach_house:removal/removal_machines

execute as @e[predicate=beach_house:is_clicked_interaction, tag=machine] run data remove entity @s interaction