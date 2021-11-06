# Add tags
tag @s add game.party.spleef.player.spectator
tag @s add game.party.spleef.player
execute as @s at @s run game eliminate

# Set scores
scoreboard players set @s s.player_y 0

# Set player gamemode
gamemode spectator @s

# Alert player of join status
title @s times 0 35 0
title @s actionbar {"text": "< You have joined Spleef as a Spectator. >","color": "blue"}
