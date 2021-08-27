function lt20:minigames/build_competition/plot/clear_plots
tag @a remove judge
scoreboard players set TotalJudges BuildGlobal 0
scoreboard players reset * MarkerPlotID
scoreboard players reset * PlayerPlotID
scoreboard players set GameState BuildGlobal 0
scoreboard players set Theme BuildGlobal 0
scoreboard players set TimeRemaining BuildGlobal 0
scoreboard players set MinutesRemaining BuildGlobal 0
scoreboard players set TickCount BuildGlobal 0
scoreboard players set TempPlayerScore BuildGlobal 1
bossbar set minecraft:build_themetime players
bossbar set minecraft:build_judgevote players
bossbar set minecraft:build_viewervote players
tag @e remove finalist
tag @e remove finalist_made
tag @a remove build_competition_builder
minigame finish
