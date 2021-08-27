# Copy over global time score to players final time
tag @s remove turtle_racer
clear @s
scoreboard players reset @s TRacePowerupTime
scoreboard players set @s TRacePlayerStage -1
scoreboard players operation @s TRacePlayerM = Mins TRaceGlobal
scoreboard players operation @s TRacePlayerS = SecsMinusMins TRaceGlobal
scoreboard players add FinishedPlayers TRaceGlobal 1
scoreboard players operation @s TRacePlayerPlace = FinishedPlayers TRaceGlobal
execute if score FinishedPlayers TRaceGlobal matches 1 if score PlayerCount TRaceGlobal matches 1 run function lt20:minigames/turtle_race/end
execute if score FinishedPlayers TRaceGlobal matches 2 if score PlayerCount TRaceGlobal matches 2 run function lt20:minigames/turtle_race/end
execute if score FinishedPlayers TRaceGlobal matches 3 if score PlayerCount TRaceGlobal matches 3.. run function lt20:minigames/turtle_race/end

execute if score @s TRacePlayerPlace matches 1 if score Mode TRaceGlobal matches 1 run tp @s @e[tag=FirstPlaceNormalRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 2 if score Mode TRaceGlobal matches 1 run tp @s @e[tag=SecondPlaceNormalRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 3 if score Mode TRaceGlobal matches 1 run tp @s @e[tag=ThirdPlaceNormalRacePodium,limit=1,sort=nearest]

execute if score @s TRacePlayerPlace matches 1 if score Mode TRaceGlobal matches 2 run tp @s @e[tag=FirstPlaceArcadeRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 2 if score Mode TRaceGlobal matches 2 run tp @s @e[tag=SecondPlaceArcadeRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 3 if score Mode TRaceGlobal matches 2 run tp @s @e[tag=ThirdPlaceArcadeRacePodium,limit=1,sort=nearest]

execute if score @s TRacePlayerPlace matches 1 if score Mode TRaceGlobal matches 3 run tp @s @e[tag=FirstPlaceFlyingRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 2 if score Mode TRaceGlobal matches 3 run tp @s @e[tag=SecondPlaceFlyingRacePodium,limit=1,sort=nearest]
execute if score @s TRacePlayerPlace matches 3 if score Mode TRaceGlobal matches 3 run tp @s @e[tag=ThirdPlaceFlyingRacePodium,limit=1,sort=nearest]

execute if score @s TRacePlayerPlace matches 1 if score @s TRacePlayerS matches 10.. run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 1st place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]
execute if score @s TRacePlayerPlace matches 1 if score @s TRacePlayerS matches ..9 run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 1st place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]

execute if score @s TRacePlayerPlace matches 2 if score @s TRacePlayerS matches 10.. run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 2nd place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]
execute if score @s TRacePlayerPlace matches 2 if score @s TRacePlayerS matches ..9 run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 2nd place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]

execute if score @s TRacePlayerPlace matches 3 if score @s TRacePlayerS matches 10.. run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 3rd place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]
execute if score @s TRacePlayerPlace matches 3 if score @s TRacePlayerS matches ..9 run tellraw @a [{"selector":"@s","color":"gray"},{"text":" has finished the race in 3rd place!","color":"gold"},{"text":" | "},{"text":"Time: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerM"},"color":"white"},{"text":":","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"TRacePlayerS"},"color":"white"}]

execute as @e[tag=racing_turtle] at @s unless entity @a[tag=turtle_racer,distance=..0.5] run kill @s
