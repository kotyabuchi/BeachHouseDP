execute if entity @e[predicate=beach_house:is_mechine_frame, tag=shaved_ice_machine] run function beach_house:place/shaved_ice_machine
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=beer_server] run function beach_house:place/beer_server
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=juice_server] run function beach_house:place/juice_server
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=griddle] run function beach_house:place/griddle
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=cooler_box] run function beach_house:place/cooler_box

execute as @e[predicate=beach_house:is_not_setup, tag=half] at @s run function beach_house:set_half_machine
execute as @e[predicate=beach_house:is_not_setup] run tag @s remove not_setup