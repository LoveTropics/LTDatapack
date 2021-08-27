scoreboard players operation @s PlayerPlotID = TempPlayerScore BuildGlobal
scoreboard players add TempPlayerScore BuildGlobal 1
tp @s @e[tag=build_competition_structure_marker,sort=random,limit=1,scores={MarkerPlotID=0}]
execute as @s at @s run scoreboard players operation @e[tag=build_competition_structure_marker,sort=nearest,limit=1,scores={MarkerPlotID=0}] MarkerPlotID = @s PlayerPlotID
execute as @a[sort=random,limit=1,scores={PlayerPlotID=0}] at @s if score TempPlayerScore BuildGlobal matches ..17 run function lt20:minigames/build_competition/player/set_player_plot
