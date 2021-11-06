# Delete scoreboard objectives
scoreboard objectives remove s.global
scoreboard objectives remove s.player_y
scoreboard objectives remove s.player_floor
scoreboard objectives remove s.crumble_time
scoreboard objectives remove s.points

# Disable games 'on_tick' functionality
scoreboard players set game.party.spleef.active main.global 0

# Remove player tags
tag @a remove game.party.spleef.player.competitor
tag @a remove game.party.spleef.player.spectator
tag @a remove game.party.spleef.player

# Remove bossbars
bossbar remove lt:game.party.spleef.forced_progression_bar
bossbar remove lt:game.party.spleef.winner_bar
