execute if score Mode TRaceGlobal matches 3 run setblock -1180 187 2551 air
execute if score Mode TRaceGlobal matches 3 run setblock -1180 187 2527 air
kill @e[tag=racing_turtle]
kill @e[tag=shock_jelly]
kill @e[tag=ink_bomb]
kill @e[type=item]
tag @e remove has_racer
tag @e remove turtle_racer
tag @e remove has_powerup
tag @e remove has_turtle
tag @e remove has_slow_aura
scoreboard players reset * TRaceFailTime
scoreboard players reset * TRaceShockTime
scoreboard players reset * TRaceGiveTime
scoreboard players reset * TRaceSlowAura
scoreboard players set GameState TRaceGlobal 0
scoreboard players set FinishedPlayers TRaceGlobal 0
scoreboard players reset TimeToCancel TRaceGlobal
scoreboard players set HoldTurtles TRaceGlobal 0
scoreboard players set Mode TRaceGlobal 1
scoreboard players set SecsMinusMins TRaceGlobal 0
scoreboard players set Mins TRaceGlobal 0
scoreboard players set Secs TRaceGlobal 0
scoreboard players set TickCount TRaceGlobal 0
scoreboard players set MinsMultiplied TRaceGlobal 0
scoreboard players set PlayerCount TRaceGlobal 0
scoreboard players reset * TRacePowerupTime
scoreboard players reset TimeToDrop TRaceGlobal
execute as @e[tag=racing_turtle_spawn] at @s run fill ~ ~-1 ~ ~1 ~-1 ~-1 barrier
execute in tropicraft:tropics run fill -688 132 2471 -674 132 2458 glass replace air
scoreboard players reset * TRacePlayerS
scoreboard players reset * TRacePlayerM
scoreboard players reset * TRacePlayerStage
scoreboard players reset * TRacePlayerPlace
scoreboard players reset * TRaceSpeedTime
scoreboard players reset * RaceFinishPlace
scoreboard players reset PowerupAnimate TRaceGlobal
execute as @e[tag=powerup] at @s run function lt20:minigames/turtle_race/powerups/disable_powerup
minigame finish
