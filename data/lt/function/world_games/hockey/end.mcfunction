$execute at @e[tag=world_game.hockey.crab_spawn] as @s run title @a[distance=0..75] title [{"translate":"lt.hocket_win_$(team)","color":"$(team)"}]
execute as @a[team=hockey] at @s run function lt:world_games/hockey/on_exit
scoreboard players set red game.hockey 0
scoreboard players set blue game.hockey 0
$scoreboard players add $(team)Wins game.hockey 1
