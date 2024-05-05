execute on target run clear @s minecraft:stick[minecraft:custom_data~{type:beer_mug}] 1
tag @s add placed_mug
tag @s add working
summon item_display ~ ~0.5 ~ {Tags:[beer_mug], item:{count:1, id: "minecraft:stick", components:{"minecraft:custom_model_data": 2}}}
playsound block.anvil.use block @a ~ ~0.5 ~ 0.3 0.5
schedule function beach_house:click_action/beer_server/poured_beer 3s