execute as @e[predicate=beach_house:is_beer_server] at @s positioned ^0.2 ^-0.4 ^0.25 summon minecraft:interaction run data modify entity @s Tags set value [beer_server_tap,machine,right]
execute as @e[predicate=beach_house:is_beer_server] at @s positioned ^-0.2 ^-0.4 ^0.25 summon minecraft:interaction run data modify entity @s Tags set value [beer_server_tap,machine,left]

execute as @e[predicate=beach_house:is_beer_server_tap] run data modify entity @s width set value 0.3
execute as @e[predicate=beach_house:is_beer_server_tap] run data modify entity @s height set value 0.6