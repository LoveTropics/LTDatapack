$title @a[tag=hole$(ForcedAge)Player] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"$(ForcedAge)"}]}]
$execute as @a[tag=hole$(ForcedAge)Player] at @s run playsound minecraft:block.note_block.bell voice @s
$execute as @a[tag=hole$(ForcedAge)Player] run attribute @s minecraft:player.submerged_mining_speed base set 0.2
# Kills the crab
$kill @e[tag=hole$(ForcedAge)Crab]
$kill @e[tag=hole$(ForcedAge)Text]
$execute at @a[tag=hole$(ForcedAge)Player] run kill @e[type=minecraft:experience_orb,distance=..20]
#TropiCoins
$tag @a[tag=hole$(ForcedAge)Player] remove golfInGame
$tag @a remove hole$(ForcedAge)Player
gamemode creative @s[tag=golfCreative]
tag @s[gamemode=creative] remove golfCreative
clear @s #minecraft:hoes
tag @s remove golfInGame