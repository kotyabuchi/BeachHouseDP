execute if entity @e[tag=working, dx=0, dy=1, dz=0] run return fail
execute if entity @s[tag=width2] positioned ^1 ^ ^ if entity @e[tag=working, dx=0, dy=1, dz=0] run return fail
say success
# 撤去する機械の付与
execute if entity @s[tag=beer_server] as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/beer_server
execute if entity @s[tag=juice_server] as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/juice_server
execute if entity @s[tag=griddle] as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/griddle
execute if entity @s[tag=griddle] positioned ^1 ^ ^ as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/griddle
execute if entity @s[tag=cooler_box] as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/cooler_box
execute if entity @s[tag=cooler_box] positioned ^1 ^ ^ as @e[predicate=beach_house:is_clicked_interaction, dx=0, dy=1, dz=0] on target run function beach_house:give/machine/cooler_box

# 撤去
execute if entity @s[tag=half] if block ~ ~ ~ dark_oak_slab run setblock ~ ~ ~ dark_oak_planks
execute if entity @s[tag=half, tag=width2] if block ^1 ^ ^ dark_oak_slab run setblock ^1 ^ ^ dark_oak_planks
execute if entity @s[tag=width2] positioned ^1 ^ ^ as @e[tag=machine, dx=0, dy=1, dz=0] run kill @s
execute if entity @s[tag=width2] positioned ^1 ^ ^ as @e[predicate=beach_house:is_machine_part, dx=0, dy=1, dz=0] run kill @s
execute as @e[tag=machine, dx=0, dy=1, dz=0] run kill @s