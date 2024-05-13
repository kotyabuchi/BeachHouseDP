data modify entity @s item set value {count:1, id:"minecraft:item_frame", components:{"minecraft:custom_model_data":1}}
data modify entity @s Tags set value [machine, shaved_ice_machine, not_setup]
execute at @s run summon item_display ~ ~ ~ {Tags:[machine,shaved_ice_machine_handle], item:{count:1,id:"minecraft:item_frame",components:{"minecraft:custom_model_data":2}}, interpolation_duration: 5}