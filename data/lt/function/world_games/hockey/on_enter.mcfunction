team join hockey @s
function lt:world_games/hockey/util/give_stick
execute store result score random game.hockey run random roll 1..2
execute if score random game.hockey matches 1 run function lt:world_games/hockey/team/items/blue
execute if score random game.hockey matches 2 run function lt:world_games/hockey/team/items/red
attribute @s minecraft:generic.jump_strength modifier add lt:no_jump -9999999 add_value
tp @s @e[tag=world_game.hockey.enter,limit=1]