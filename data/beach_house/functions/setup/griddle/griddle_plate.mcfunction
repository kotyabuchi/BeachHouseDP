execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^1.085 ^-0.2 ^0.025 summon minecraft:interaction run data modify entity @s Tags set value [griddle,plate,machine,right]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^0.5 ^-0.2 ^0.025 summon minecraft:interaction run data modify entity @s Tags set value [griddle,plate,machine,center]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^-0.085 ^-0.2 ^0.025 summon minecraft:interaction run data modify entity @s Tags set value [griddle,plate,machine,left]

execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate] run data modify entity @s width set value 0.7
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate] run data modify entity @s height set value 0.1