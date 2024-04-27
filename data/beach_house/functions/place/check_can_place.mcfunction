execute at @e[predicate=beach_house:is_mechine_frame] if block ~ ~-1 ~ air run function beach_house:place/result/can_not_place_on_air
execute at @e[predicate=beach_house:is_mechine_frame] align xyz if entity @e[type=item_display, tag=machine, dx=0, dy=0, dz=0] run function beach_house:place/result/already_placed

execute unless entity @s[tag=failed_place] at @e[predicate=beach_house:is_mechine_frame] align xyz run function beach_house:place/place_machines
execute if entity @s[tag=failed_place] run function beach_house:give/return_machine

tag @s remove failed_place
execute as @e[predicate=beach_house:is_mechine_frame] run kill @s
advancement revoke @s only beach_house:place_machines