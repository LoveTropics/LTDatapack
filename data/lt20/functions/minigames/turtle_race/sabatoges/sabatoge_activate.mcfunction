#data merge entity @s {NoGravity:1b}
execute if entity @s[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{shockSabatoge:1b}}}] run function lt20:minigames/turtle_race/sabatoges/create_shock_sabatoge
execute if entity @s[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{inkSabatoge:1b}}}] run function lt20:minigames/turtle_race/sabatoges/create_ink_sabatoge
execute if entity @s[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{slowSabatoge:1b}}}] run function lt20:minigames/turtle_race/sabatoges/apply_slow_aura
execute if entity @s[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{rocketSabatoge:1b}}}] run function lt20:minigames/turtle_race/sabatoges/launch_shock_rocket
kill @s
