# Runs on second function
execute if score GameState BuildGlobal matches 1 run scoreboard players add TickCount BuildGlobal 1
execute if score TickCount BuildGlobal matches 20.. run function lt20:minigames/build_competition/on_second

# Handles the floor replacing
execute as @e[tag=build_competition_structure_marker] at @s if score GameState BuildGlobal matches 1 unless block ~ ~ ~ air run function lt20:minigames/build_competition/plot/set_floor_type

# Updates bossbar
execute store result bossbar minecraft:build_themetime value run scoreboard players get TimeRemaining BuildGlobal

# Counts game time down
execute if score TimeRemaining BuildGlobal matches 1.. run scoreboard players remove TimeRemaining BuildGlobal 1

# starts build phase end
execute if score GameState BuildGlobal matches 1 if score TimeRemaining BuildGlobal matches 3 run function lt20:minigames/build_competition/countdown/3
execute store result bossbar minecraft:build_themetime value run scoreboard players get TimeRemaining BuildGlobal

# starts build phase end
execute if score GameState BuildGlobal matches 4 if score TimeRemaining BuildGlobal matches 3 run function lt20:minigames/build_competition/end

# Marks plot as being a finalist
execute at @e[tag=build_competition_structure_marker,tag=finalist] positioned ~ ~-0.5 ~ run function lt20:minigames/signature_run/effects/item_particle

# Keeps bedrock below block type marker
execute at @e[tag=build_competition_structure_marker] run setblock ~ ~-1 ~ bedrock

#
scoreboard players set VotesCast BuildGlobal 0
execute as @e[tag=build_competition_structure_marker,tag=finalist] run scoreboard players add VotesCast BuildGlobal 1
execute if score GameState BuildGlobal matches 2.. if score VotesCast BuildGlobal = TotalJudges BuildGlobal unless score TotalJudges BuildGlobal matches 0 run function lt20:minigames/build_competition/end_judging_phase

#
execute as @e[tag=build_competition_structure_marker] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},distance=..3] run function lt20:minigames/build_competition/plot/set_plot_finalist
kill @e[type=tnt]
