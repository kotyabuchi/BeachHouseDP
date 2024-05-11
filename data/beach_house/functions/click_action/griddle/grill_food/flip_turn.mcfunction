execute as @e[tag=fliping, nbt={transformation:{translation:[0f,0f,0.1f]}}] run tag @s add flip_turn
execute as @e[tag=flip_turn] run tag @s add grilling
execute as @e[tag=flip_turn] run tag @s remove fliping
execute as @e[tag=flip_turn] run data merge entity @s {transformation:{translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f]},start_interpolation:0}
execute as @e[tag=flip_turn] run tag @s remove flip_turn