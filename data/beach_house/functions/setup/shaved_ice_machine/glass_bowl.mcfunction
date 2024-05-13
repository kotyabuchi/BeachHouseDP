execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine] at @s positioned ^ ^-0.5 ^0.05 summon minecraft:interaction run data modify entity @s Tags set value [machine,shaved_ice_machine,bowl]

execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction] run data modify entity @s width set value 0.65
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction] run data modify entity @s height set value 0.52
execute as @e[predicate=beach_house:machines/shaved_ice_machine/is_shaved_ice_machine] at @s positioned ^ ^-0.5 ^0.05 run data modify entity @e[predicate=beach_house:machines/shaved_ice_machine/is_bowl_interaction, distance=..0.1, limit=1] Rotation[0] set from entity @s Rotation[0]