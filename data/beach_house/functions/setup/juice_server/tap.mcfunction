execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^0.22 ^-0.37 ^0.28 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,tap,machine,right,water_melon]
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^-0.22 ^-0.37 ^0.28 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,tap,machine,left,grape]

execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_tap] run data modify entity @s width set value 0.4
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_tap] run data modify entity @s height set value 0.6
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_tap] at @s align xyz run data modify entity @s Rotation[0] set from entity @e[predicate=beach_house:machines/juice_server/is_juice_server, dx=0, dy=0, dz=0, limit=1] Rotation[0]