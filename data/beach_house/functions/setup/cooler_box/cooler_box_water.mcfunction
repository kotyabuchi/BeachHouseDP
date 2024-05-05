execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box] at @s positioned ^0.07 ^-0.5 ^ summon minecraft:interaction run data modify entity @s Tags set value [cooler_box,water,machine,right]
execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box] at @s positioned ^0.92 ^-0.5 ^ summon minecraft:interaction run data modify entity @s Tags set value [cooler_box,water,machine,left]

execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box_water] run data modify entity @s width set value 0.85
execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box_water] run data modify entity @s height set value 0.6