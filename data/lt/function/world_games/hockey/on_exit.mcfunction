execute if entity @s[team=hockey] run team leave @s
clear @s minecraft:wooden_hoe[minecraft:custom_data={HockeyStick:1b}]
attribute @s minecraft:generic.jump_strength modifier remove lt:no_jump
attribute @s ltextras:friction modifier remove lt:h_extra
tp @s @e[tag=world_game.hockey.exit,limit=1]