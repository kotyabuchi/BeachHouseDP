execute positioned ~ ~0.5 ~ run kill @e[type=item_display, tag=juice, distance=..0.1]
tag @s remove finished
tag @s remove placed_glass
execute if entity @s[tag=grape] on target run function beach_house:give/drink/juice_grape
execute if entity @s[tag=water_melon] on target run function beach_house:give/drink/juice_water_melon