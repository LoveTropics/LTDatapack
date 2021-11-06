# Add tags
tag @s add game.party.turtle_race.one_way.player.competitor
tag @s add game.party.turtle_race.one_way.player

# Set player gamemode
gamemode adventure @s

# Set scores
scoreboard players set @s r.o.p_checkpoint 0
scoreboard players set @s r.o.p_lap 0

# Alert player of join status
title @s times 0 35 0
title @s actionbar {"text": "< You have joined Turtle Race as a Competitor. >","color": "dark_green"}