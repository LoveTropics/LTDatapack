playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1
scoreboard players add @s TRacePlayerStage 1
tellraw @s [{"text":"You've passed checkpoint number: ","color":"yellow"},{"score":{"name":"@s","objective":"TRacePlayerStage"},"color":"aqua"}]
execute if score @s TRacePlayerStage matches 10 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" is halfway through the course.","color":"yellow"}]
execute if score @s TRacePlayerStage matches 7 run data merge entity @e[tag=racing_turtle,sort=nearest,limit=1,distance=..2] {Attributes:[{Base:3.5d,Name:"generic.movementSpeed"}]}
execute if score @s TRacePlayerStage matches 7 run effect give @s night_vision 36000 80 true
execute if score @s TRacePlayerStage matches 10 run data merge entity @e[tag=racing_turtle,sort=nearest,limit=1,distance=..2] {Attributes:[{Base:3.5d,Name:"generic.movementSpeed"}]}

execute if score @s TRacePlayerStage matches 8 run data merge entity @e[tag=racing_turtle,sort=nearest,limit=1,distance=..2] {Attributes:[{Base:2.0d,Name:"generic.movementSpeed"}]}
execute if score @s TRacePlayerStage matches 11 run data merge entity @e[tag=racing_turtle,sort=nearest,limit=1,distance=..2] {Attributes:[{Base:2.0d,Name:"generic.movementSpeed"}]}
execute if score @s TRacePlayerStage matches 11 run effect clear @s night_vision
scoreboard players set @s TRaceCheckDelay 30
