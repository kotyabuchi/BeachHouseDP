tag @s add placer
execute store result score @s direction run data get entity @s Rotation[0]
scoreboard players operation @s direction += FloorAngle direction
scoreboard players operation @s direction /= Direction direction
scoreboard players operation @s direction *= Direction direction
scoreboard players operation @s direction += Reverse direction

execute as @e[type=item_frame, tag=machine, tag=beer_server] at @s align xyz run function beach_house:place/beer_server
execute as @e[type=item_frame, tag=machine, tag=juice_server] at @s align xyz run function beach_house:place/juice_server
execute as @e[type=item_frame, tag=machine, tag=griddle] at @s align xyz run function beach_house:place/griddle
execute as @e[type=item_frame, tag=machine, tag=cooler_box] at @s align xyz run function beach_house:place/cooler_box

execute as @e[type=item_display, tag=not_set_direction] at @s run function beach_house:set_direction

tag @s remove placer