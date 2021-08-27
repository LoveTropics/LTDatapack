tag @s add build_winner_plot
tag @s add build_winner_plot_made
execute as @a[tag=finalist] at @s if score @s PlayerPlotID = @e[limit=1,sort=nearest,tag=build_competition_structure_marker] MarkerPlotID run tag @s add build_winner_player
tag @e remove finalist
data merge entity @e[tag=build_competition_plot_label,sort=nearest,limit=1,team=BuildFinalist3] {CustomName:'{"text":"Winner!","color":"aqua"}'}
function lt20:minigames/build_competition/plot/clear_non_winner_plots
title @a title [{"selector":"@a[tag=build_winner_player,limit=1]"},{"text":"'s build wins!'"}]
title @a subtitle {"text":"Good job!","color":"yellow"}
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:25,CustomName:'{"text":"Winner!!!","color":"aqua","bold":true}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;13432831,4560639],FadeColors:[I;16777215]}]}}}}
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,CustomName:'{"text":"Winner!!!","color":"aqua","bold":true}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;13432831,4560639],FadeColors:[I;16777215]}]}}}}
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:15,CustomName:'{"text":"Winner!!!","color":"aqua","bold":true}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;13432831,4560639],FadeColors:[I;16777215]}]}}}}
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:10,CustomName:'{"text":"Winner!!!","color":"aqua","bold":true}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;13432831,4560639],FadeColors:[I;16777215]}]}}}}
schedule function lt20:minigames/build_competition/end 30s
