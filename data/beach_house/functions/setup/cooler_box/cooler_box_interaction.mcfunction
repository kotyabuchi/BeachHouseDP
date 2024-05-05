execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box] at @s positioned ^0.03 ^-0.5 ^-0.03 summon minecraft:interaction run data modify entity @s Tags set value [cooler_box,interaction,machine,right]
execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box] at @s positioned ^0.97 ^-0.5 ^-0.03 summon minecraft:interaction run data modify entity @s Tags set value [cooler_box,interaction,machine,left]

execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box_interaction] run data modify entity @s width set value 0.94
execute as @e[predicate=beach_house:machines/cooler_box/is_cooler_box_interaction] run data modify entity @s height set value 0.7