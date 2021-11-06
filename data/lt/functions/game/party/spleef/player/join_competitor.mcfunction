# Add tags
tag @s add game.party.spleef.player.competitor
tag @s add game.party.spleef.player

# Set scores
scoreboard players set @s s.player_y 0

# Set player gamemode
gamemode adventure @s

# Count player
scoreboard players add total_competitors s.global 1
scoreboard players add alive_competitors s.global 1

# Alert player of join status
title @s times 0 35 0
title @s actionbar {"text": "< You have joined Spleef as a Competitor. >","color": "dark_green"}
