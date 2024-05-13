tag @s add working
data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.5708f}},start_interpolation:0}
execute as @e[predicate=beach_house:food/is_display_ice, distance=..0.01] run data merge entity @s {transformation:{right_rotation:{axis:[0f,1f,0f],angle:1.5708f}},start_interpolation:0}