execute positioned ~ ~0.5 ~ run kill @e[type=item_display, tag=beer, distance=..0.1]
tag @s remove finished
tag @s remove placed_mug
execute on target run function beach_house:give/drink/beer