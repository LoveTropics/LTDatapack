$execute at @e[tag=world_game.hockey.crab_spawn] as @s run title @a[distance=0..75] title [{"text":"$(team)","color":"$(team)"},{"text":" has won hockey","color":"gray"}]
execute as @a[team=hockey] at @s run function lt:world_games/hockey/on_exit
scoreboard players set red game.hockey 0
scoreboard players set blue game.hockey 0
