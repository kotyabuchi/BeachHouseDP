tag @s add give_machine
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=beer_server] run schedule function beach_house:give/beer_server 2
execute if entity @e[predicate=beach_house:is_mechine_frame, tag=juice_server] run schedule function beach_house:give/juice_server 2