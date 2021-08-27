# Counts game time down
scoreboard players add Secs TRaceGlobal 1

# Calculates MinutesLeft and SecsMinusMins values every second
scoreboard players operation Mins TRaceGlobal = Secs TRaceGlobal
scoreboard players operation Mins TRaceGlobal /= 60Math TRaceGlobal

scoreboard players operation MinsMultiplied TRaceGlobal = Mins TRaceGlobal
scoreboard players operation MinsMultiplied TRaceGlobal *= 60Math TRaceGlobal
scoreboard players operation SecsMinusMins TRaceGlobal = Secs TRaceGlobal
scoreboard players operation SecsMinusMins TRaceGlobal -= MinsMultiplied TRaceGlobal

# Updates scoreboard time display NEEDS MOD UPDATE BEFORE UNCOMMENTING
execute as @a[tag=turtle_racer] at @s if score SecsMinusMins TRaceGlobal matches 10.. run title @s actionbar [{"text":"Race Time: ","color":"aqua"},{"score":{"name":"Mins","objective":"TRaceGlobal"},"color":"yellow"},{"text":" : ","color":"gray"},{"score":{"name":"SecsMinusMins","objective":"TRaceGlobal"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"Current Checkpoint: ","color":"aqua"},{"score":{"name":"@s","objective":"TRacePlayerStage"},"color":"blue"}]
execute as @a[tag=turtle_racer] at @s if score SecsMinusMins TRaceGlobal matches ..9 run title @s actionbar [{"text":"Race Time: ","color":"aqua"},{"score":{"name":"Mins","objective":"TRaceGlobal"},"color":"yellow"},{"text":" : ","color":"gray"},{"text":"0","color":"yellow"},{"score":{"name":"SecsMinusMins","objective":"TRaceGlobal"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"Current Checkpoint: ","color":"aqua"},{"score":{"name":"@s","objective":"TRacePlayerStage"},"color":"blue"}]

# Resets counter score
scoreboard players set TickCount TRaceGlobal 0

#

execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run setblock -1180 187 2551 air
execute if score Mode TRaceGlobal matches 3 in tropicraft:tropics run setblock -1180 187 2527 air
