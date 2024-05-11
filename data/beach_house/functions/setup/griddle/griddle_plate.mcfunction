execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^1 ^-0.2 ^-0.03 summon minecraft:interaction run data modify entity @s Tags set value [griddle,plate,machine,right]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^ ^-0.2 ^-0.03 summon minecraft:interaction run data modify entity @s Tags set value [griddle,plate,machine,left]

execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate] run data modify entity @s width set value 0.8
execute as @e[predicate=beach_house:machines/griddle/is_griddle_plate] run data modify entity @s height set value 0.01
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^1 ^-0.2 ^-0.03 run data modify entity @e[predicate=beach_house:machines/griddle/is_griddle_plate, distance=..0.1, limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[predicate=beach_house:machines/griddle/is_griddle] at @s positioned ^ ^-0.2 ^-0.03 run data modify entity @e[predicate=beach_house:machines/griddle/is_griddle_plate, distance=..0.1, limit=1] Rotation[0] set from entity @s Rotation[0]