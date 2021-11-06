# Add/Remove tags
tag @s remove game.party.spleef.player.competitor
tag @s add game.party.spleef.player.spectator

# Set scores
scoreboard players set @s s.player_y 0
scoreboard players set @s s.player_floor 0

# Set player gamemode
gamemode spectator @s

# Teleport player to above a random competitor
execute as @s at @s positioned ~ ~3.5 ~ run tp @s @a[tag=game.party.spleef.player.competitor,limit=1,sort=random]

# Remove one player from player count
scoreboard players remove alive_competitors s.global 1

# Playsound
execute as @s at @s run playsound minecraft:block.anvil.land master @s

# Alert players of disqualification
title @s times 0 35 0
title @s actionbar {"text": "< You have been disqualifed and are now a Spectator. >","color": "red"}
tellraw @a[tag=game.party.spleef.player] [{"text":"[","color":"gray"},{"text":"☠","color":"red"},{"text":"]: ","color":"gray"},{"selector":"@s","color":"dark_gray"}]
