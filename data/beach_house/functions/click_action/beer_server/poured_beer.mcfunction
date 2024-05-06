execute as @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_working_machine, scores={progress=60..}] run tag @s add finished
execute as @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] run tag @s remove working
execute as @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] run scoreboard players reset @s

execute at @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] positioned ~ ~0.5 ~ as @e[type=item_display, tag=beer_mug, distance=..0.1] run tag @s add beer
execute at @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] positioned ~ ~0.5 ~ as @e[type=item_display, tag=beer_mug, distance=..0.1] run tag @s remove beer_mug
execute at @e[predicate=beach_house:machines/beer_server/is_beer_server_tap, predicate=beach_house:machines/is_finished_machine] positioned ~ ~0.5 ~ as @e[type=item_display, tag=beer, distance=..0.1] run data modify entity @s item set value {id: "minecraft:potion", components:{"minecraft:custom_model_data": 3}}