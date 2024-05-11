execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,interaction,machine,right]
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^-0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,interaction,machine,left]

execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_interaction] run data modify entity @s width set value 0.6
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_interaction] run data modify entity @s height set value 1.35
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_interaction] at @s align xyz run data modify entity @s Rotation[0] set from entity @e[predicate=beach_house:machines/juice_server/is_juice_server, dx=0, dy=0, dz=0, limit=1] Rotation[0]