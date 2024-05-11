execute if entity @s[tag=corn] as @e[predicate=beach_house:is_clicked_interaction, distance=..0.01] on target run function beach_house:give/food/corn/grilled_corn
execute if entity @s[tag=sausage] as @e[predicate=beach_house:is_clicked_interaction, distance=..0.01] on target run function beach_house:give/food/sausage/grilled_sausage

execute at @s positioned ^ ^0.2 ^-0.05 as @e[type=interaction, tag=grilled, distance=..0.01] run kill @s
execute at @s positioned ^ ^0.05 ^-0.05 as @e[type=interaction, tag=grilled, distance=..0.01] run kill @s
execute at @s positioned ^ ^-0.1 ^-0.05 as @e[type=interaction, tag=grilled, distance=..0.01] run kill @s
execute at @s positioned ^ ^-0.25 ^-0.05 as @e[type=interaction, tag=grilled, distance=..0.01] run kill @s
execute at @s positioned ^ ^-0.4 ^-0.05 as @e[type=interaction, tag=grilled, distance=..0.01] run kill @s
execute at @s positioned ^ ^ ^0.3 as @e[type=text_display, tag=grilled, distance=..0.01] run kill @s
kill @s
schedule function beach_house:machine_operation/griddle/check_grilling 1t append