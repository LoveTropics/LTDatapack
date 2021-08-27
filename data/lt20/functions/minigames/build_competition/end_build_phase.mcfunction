#gamemode @a[tag=build_competition_builder] build
title @a times 5 60 5
title @a title [{"text":"Builders!","color":"gold","bold":true}]
title @a title [{"text":"Put your blocks down.","color":"gold","bold":true}]
gamemode spectator @a[tag=build_competition_builder]
execute as @a[tag=build_competition_builder] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
execute as @a[tag=judge] run scoreboard players add TotalJudges BuildGlobal 1
tag @a[tag=judge] add before_judging
schedule function lt20:minigames/build_competition/player/assign_judge 10s
scoreboard players set GameState BuildGlobal 2
function lt20:minigames/build_competition/plot/save_plots
bossbar set minecraft:build_themetime players
bossbar set minecraft:build_judgevote players @a
