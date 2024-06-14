playsound minecraft:item.goat_horn.sound.1 block @a 88 21 8 1 0.5 0.1
data merge entity @e[tag=rudder,limit=1] {transformation:{left_rotation:[0f,0f,0.7f,0.7f]}, start_interpolation:0}
schedule function beach_house:click_action/rudder/steer 3s