execute if block ~ ~-1 ~ dark_oak_planks run setblock ~ ~-1 ~ dark_oak_slab replace
execute if entity @s[tag=width2] positioned ^1 ^ ^ if block ~ ~-1 ~ dark_oak_planks run setblock ~ ~-1 ~ dark_oak_slab replace
execute if block ~ ~-1 ~ quartz_block run setblock ~ ~-1 ~ quartz_slab replace
execute if entity @s[tag=width2] positioned ^1 ^ ^ if block ~ ~-1 ~ quartz_block run setblock ~ ~-1 ~ quartz_slab replace
tp @s ~ ~-0.5 ~
execute if entity @s[tag=width2] positioned ^1 ^ ^ align xyz as @e[predicate=beach_house:is_machine_part, dx=0, dy=0, dz=0] at @s run tp @s ~ ~-0.5 ~