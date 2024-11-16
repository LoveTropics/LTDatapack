tag @e[tag=golfDummy] remove Untouchable
kill @e[tag=golfDummy]
execute as @e[tag=golfDummySpawner] at @s run summon dummyplayers:dummy_player ~ ~ ~ {Invulnerable:1b, DisabledSlots:4144959, Tags:["golfDummy"]}
execute as @e[tag=golfDummySpawner] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add golfDummy
execute as @e[tag=golfDummy] at @s run function lt:world_games/minigolf/core/utils/dummys/tag with entity @e[type=minecraft:marker,sort=nearest,limit=1] data
execute as @e[tag=holeDummySouthEast] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ -45 0
execute as @e[tag=holeDummySouthWest] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ 45 0
execute as @e[tag=holeDummyNorthWest] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ 135 0
execute as @e[tag=holeDummyNorthEast] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ -135 0
tag @e[tag=golfDummy] add Untouchable