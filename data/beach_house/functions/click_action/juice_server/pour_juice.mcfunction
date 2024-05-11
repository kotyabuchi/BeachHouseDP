execute on target run clear @s minecraft:stick[minecraft:custom_data~{type:juice_glass}] 1
tag @s add placed_glass
tag @s add working
summon item_display ~ ~0.5 ~ {Tags:[juice_glass], item:{count:1, id: "minecraft:stick", components:{"minecraft:custom_model_data": 1}}}
playsound block.anvil.use block @a ~ ~0.5 ~ 0.3 0.5
schedule function beach_house:click_action/juice_server/poured_juice 3s append