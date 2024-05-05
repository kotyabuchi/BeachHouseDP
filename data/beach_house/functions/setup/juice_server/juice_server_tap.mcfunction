execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^0.22 ^-0.37 ^0.28 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,tap,machine,right]
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server] at @s positioned ^-0.22 ^-0.37 ^0.28 summon minecraft:interaction run data modify entity @s Tags set value [juice_server,tap,machine,left]

execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_tap] run data modify entity @s width set value 0.4
execute as @e[predicate=beach_house:machines/juice_server/is_juice_server_tap] run data modify entity @s height set value 0.6