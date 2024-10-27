function lt:world_games/hockey/util/give_stick
scoreboard players set RedTotal game.hockey 0
scoreboard players set BlueTotal game.hockey 0
execute as @a[team=hockey.red] run scoreboard players add RedTotal game.hockey 1
execute as @a[team=hockey.blue] run scoreboard players add BlueTotal game.hockey 1
execute if score RedTotal game.hockey > BlueTotal game.hockey run function lt:world_games/hockey/team/join/blue
execute if score RedTotal game.hockey < BlueTotal game.hockey run function lt:world_games/hockey/team/join/red
execute if score RedTotal game.hockey = BlueTotal game.hockey run function lt:world_games/hockey/team/join/blue
function lt:world_games/hockey/util/set_attributes
tp @s @e[tag=world_game.hockey.enter,limit=1]
gamemode adventure @s