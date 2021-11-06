# Create scoreboard objectives
scoreboard objectives add s.global dummy
scoreboard objectives add s.player_y dummy
scoreboard objectives add s.player_floor dummy
scoreboard objectives add s.crumble_time dummy
scoreboard objectives add s.points dummy

# Set starting scores
scoreboard players set forced_progression_stage s.global 0
scoreboard players set time_to_forced_progression s.global 0
scoreboard players set state s.global 0

# Create bossbars
bossbar add lt:game.party.spleef.forced_progression_bar "PLACEHOLDER"
bossbar add lt:game.party.spleef.winner_bar "PLACEHOLDER"

# Modify bossbars
bossbar set lt:game.party.spleef.forced_progression_bar color purple
bossbar set lt:game.party.spleef.forced_progression_bar max 1
bossbar set lt:game.party.spleef.forced_progression_bar value 1
bossbar set lt:game.party.spleef.forced_progression_bar style progress
bossbar set lt:game.party.spleef.forced_progression_bar visible false

bossbar set lt:game.party.spleef.winner_bar color purple
bossbar set lt:game.party.spleef.winner_bar max 1
bossbar set lt:game.party.spleef.winner_bar value 1
bossbar set lt:game.party.spleef.winner_bar style progress
bossbar set lt:game.party.spleef.winner_bar visible false
