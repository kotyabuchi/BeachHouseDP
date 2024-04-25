execute store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=placer, sort=nearest, limit=1] direction
tag @s remove not_set_direction