execute as @e[predicate=beach_house:is_beer_server] at @s positioned ^0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [beer_server_interaction,machine,right]
execute as @e[predicate=beach_house:is_beer_server] at @s positioned ^-0.15 ^-0.5 ^-0.15 summon minecraft:interaction run data modify entity @s Tags set value [beer_server_interaction,machine,left]

execute as @e[predicate=beach_house:is_beer_server_interaction] run data modify entity @s width set value 0.6
execute as @e[predicate=beach_house:is_beer_server_interaction] run data modify entity @s height set value 1.1