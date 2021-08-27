
# Forceload chunks
execute in tropicraft:tropics run forceload add -1299 1964 -1149 1892

# Copy settings
execute if score TimeRemaining BuildGlobal matches 0 run scoreboard players operation TimeRemaining BuildGlobal = DefaultTime BuildGlobal

# Join players to plots
scoreboard players set TempPlayerScore BuildGlobal 1
scoreboard players reset * MarkerPlotID
scoreboard players set @e[tag=build_competition_structure_marker] MarkerPlotID 0
execute as @a[tag=build_competition_builder,limit=1,sort=random] at @s run function lt20:minigames/build_competition/player/set_player_plot

# Shows build timer and theme to all players
bossbar set minecraft:build_themetime players @a
execute store result bossbar minecraft:build_themetime max run scoreboard players get TimeRemaining BuildGlobal

# Set bossbar name based off of theme BuildGlobal score
execute if score Theme BuildGlobal matches 1 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"Sand Castle","color":"gold","bold":true}]
execute if score Theme BuildGlobal matches 2 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"Under Da Sea","color":"aqua","bold":true}]
execute if score Theme BuildGlobal matches 3 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"Dire 9 by 9's","color":"gray","bold":true}]
execute if score Theme BuildGlobal matches 4 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"Tree House","color":"dark_green","bold":true}]
execute if score Theme BuildGlobal matches 6 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"My Little Tiki Bar","color":"light_purple","bold":true}]
execute if score Theme BuildGlobal matches 7 run bossbar set minecraft:build_themetime name [{"text":"Theme: ","color":"yellow"},{"text":"Yel.... no not again, Submarine","color":"red","bold":true}]

team leave @e[tag=build_competition_plot_label]
tag @e remove finalist
tag @e remove finalist_made

scoreboard players set GameState BuildGlobal 1
function lt20:minigames/build_competition/plot/set_structure_template
