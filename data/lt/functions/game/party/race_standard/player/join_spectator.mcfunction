# Add tags
tag @s add game.party.turtle_race.standard.player.spectator
tag @s add game.party.turtle_race.standard.player

# Set player gamemode
execute as @s at @s run game eliminate

# Alert player of join status
title @s times 0 35 0
title @s actionbar {"text": "< You have joined Turtle Race as a Spectator. >","color": "blue"}
