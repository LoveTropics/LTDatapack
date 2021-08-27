title @a title [{"text":"Judging Time!","color":"gold","bold":true}]
title @a subtitle [{"text":"Time for the judges to pick their finalists.","color":"yellow","bold":true}]

tellraw @a[tag=judge] [{"text":">>> ","color":"gray"},{"text":"Judges! You have each been given a coin to pick your finalist build. Throw your voting coin on the bedrock block at the corner of the build you wish to select to enter it into final voting.","color":"yellow"},{"text":"\n\nWatch out however! Once a build has been selected it cannot be un-selected.","color":"dark_gray"}]
give @a[tag=judge] minecraft:paper{display:{Name:'{"text":"Voting Coin","color":"gold","bold":true,"italic":false}'},CustomModelData:2} 1

execute as @e[tag=build_competition_plot_label] at @s run data merge entity @s {CustomName:'{"text":"↓ Finalist Coins Here! ↓","color":"yellow"}'}
tag @a remove before_judging
