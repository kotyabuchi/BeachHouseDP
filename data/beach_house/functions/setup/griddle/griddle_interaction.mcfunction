execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^1.05 ^-0.5 ^-0.033 summon minecraft:interaction run data modify entity @s Tags set value [griddle,interaction,machine,right]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^0.5 ^-0.5 ^-0.033 summon minecraft:interaction run data modify entity @s Tags set value [griddle,interaction,machine,center]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^-0.05 ^-0.5 ^-0.033 summon minecraft:interaction run data modify entity @s Tags set value [griddle,interaction,machine,left]

execute as @e[predicate=beach_house:machines/griddle/is_griddle_interaction] run data modify entity @s width set value 0.85
execute as @e[predicate=beach_house:machines/griddle/is_griddle_interaction] run data modify entity @s height set value 0.3