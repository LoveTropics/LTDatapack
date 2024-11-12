execute as @e[tag=crabHockey] at @s if block ~ ~ ~ ltextras:checkpoint[stage=1] run function lt:world_games/hockey/score {"team":"blue"}
execute as @e[tag=crabHockey] at @s if block ~ ~ ~ ltextras:checkpoint[stage=15] run function lt:world_games/hockey/score {"team":"red"}

execute as @e[tag=hockey.manger] on target if entity @s[tag=!in_game.hockey] run function lt:world_games/hockey/on_enter
execute as @e[tag=hockey.manger] on attacker if entity @s[tag=!in_game.hockey] run function lt:world_games/hockey/on_enter
execute as @e[tag=hockey.manger] run data remove entity @s attack.player
execute as @e[tag=hockey.manger] run data remove entity @s interaction.player
