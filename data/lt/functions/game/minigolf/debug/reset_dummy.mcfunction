kill @e[tag=golfDummy]
execute as @e[tag=golfDummySpawner] at @s run summon dummyplayers:dummy_player ~ ~ ~ {Invulnerable:1b, DisabledSlots:4144959}
execute as @e[tag=golfDummySpawner] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add golfDummy
execute as @e[tag=hole01Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole01Dummy
execute as @e[tag=hole02Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole02Dummy
execute as @e[tag=hole03Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole03Dummy
execute as @e[tag=hole04Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole04Dummy
execute as @e[tag=hole05Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole05Dummy
execute as @e[tag=hole06Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole06Dummy
execute as @e[tag=hole07Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole07Dummy
execute as @e[tag=hole08Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole08Dummy
execute as @e[tag=hole09Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole09Dummy
execute as @e[tag=hole10Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole10Dummy
execute as @e[tag=hole11Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole11Dummy
execute as @e[tag=hole12Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole12Dummy
execute as @e[tag=hole13Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole13Dummy
execute as @e[tag=hole14Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole14Dummy
execute as @e[tag=hole15Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole15Dummy
execute as @e[tag=hole16Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole16Dummy
execute as @e[tag=hole17Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole17Dummy
execute as @e[tag=hole18Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole18Dummy
execute as @e[tag=hole19Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole19Dummy
execute as @e[tag=hole20Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole20Dummy
execute as @e[tag=hole21Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole21Dummy
execute as @e[tag=hole22Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole22Dummy
execute as @e[tag=hole23Marker] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add hole23Dummy
execute as @e[tag=holeDummySouthEast] at @s run tag @e[type=dummyplayers:dummy_player,distance=..1] add holeDummySouthEast
execute as @e[tag=holeDummySouthEast] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ -45 0
execute as @e[tag=holeDummySouthWest] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ 45 0
execute as @e[tag=holeDummyNorthWest] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ 135 0
execute as @e[tag=holeDummyNorthEast] at @s run tp @e[type=dummyplayers:dummy_player,distance=..1] ~ ~ ~ -135 0
execute as @e[tag=golfDummy] run data modify entity @s ProfileID set value [I; 1768587982,1106529105,-1439582096,-1685682448]
execute as @e[tag=golfDummy] run data modify entity @s NameSuffix set value '{"text":" - 20 ", "color":"green"}'
execute as @e[tag=golfDummy] run data modify entity @s NamePrefix set value '[{"text":" ","color":"red"},{"translate":"lt.golf.best_score","color":"green"}]'