tag @s remove waiting_flip
data merge entity @s {transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0.707094f,0f,0.707094f]},start_interpolation:0}
execute positioned ^ ^0.2 ^-0.05 as @e[type=interaction, tag=flip, distance=..0.01] run kill @s
execute positioned ^ ^0.05 ^-0.05 as @e[type=interaction, tag=flip, distance=..0.01] run kill @s
execute positioned ^ ^-0.1 ^-0.05 as @e[type=interaction, tag=flip, distance=..0.01] run kill @s
execute positioned ^ ^-0.25 ^-0.05 as @e[type=interaction, tag=flip, distance=..0.01] run kill @s
execute positioned ^ ^-0.4 ^-0.05 as @e[type=interaction, tag=flip, distance=..0.01] run kill @s
execute positioned ^ ^ ^0.3 as @e[type=text_display, tag=flip, distance=..0.01] run kill @s
tag @s add fliping
schedule function beach_house:click_action/griddle/grill_food/flip_turn 5t