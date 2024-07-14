execute as @s[tag=game.party.spleef.player.competitor] at @s run scoreboard players remove alive_competitors s.global 1
execute as @s[tag=game.party.spleef.player.competitor] at @s run scoreboard players remove total_competitors s.global 1
tag @s remove game.party.spleef.player.competitor
tag @s remove game.party.spleef.player.spectator
tag @s remove game.party.spleef.player
bossbar players remove lt:game.party.spleef.forced_progression_bar @s
bossbar players remove lt:game.party.spleef.winner_bar @s
scoreboard players reset @s s.player_y
scoreboard players reset @s s.player_floor
