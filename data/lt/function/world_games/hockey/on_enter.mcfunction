team join hockey @s
function lt:world_games/hockey/util/give_stick
execute store result score random game.hockey run random roll 1..2
execute if score random game.hockey matches 1 run function lt:world_games/hockey/team/blue
execute if score random game.hockey matches 2 run function lt:world_games/hockey/team/red