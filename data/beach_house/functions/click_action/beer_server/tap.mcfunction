say click tap
execute as @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] at @s run function beach_house:click_action/beer_server/take_beer
execute if items entity @s weapon.* minecraft:stick[minecraft:custom_data~{type:beer_mug}] as @e[predicate=beach_house:is_clicked_interaction, predicate=beach_house:machines/beer_server/is_beer_server_tap, tag=!placed_mug] at @s run function beach_house:click_action/beer_server/pour_beer
