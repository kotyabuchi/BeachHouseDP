execute as @e[predicate=beach_house:machines/beer_server/is_beer_server] at @s positioned ^0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [beer_server,interaction,machine,right]
execute as @e[predicate=beach_house:machines/beer_server/is_beer_server] at @s positioned ^-0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [beer_server,interaction,machine,left]

execute as @e[predicate=beach_house:machines/beer_server/is_beer_server_interaction] run data modify entity @s width set value 0.6
execute as @e[predicate=beach_house:machines/beer_server/is_beer_server_interaction] run data modify entity @s height set value 1.1