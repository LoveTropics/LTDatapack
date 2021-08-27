title @a times 5 60 5
title @a title [{"text":"The judges have voted!","color":"gold","bold":true}]
title @a subtitle [{"text":"The chat will now vote on a winner!","color":"yellow","bold":false}]
tellraw @a [{"text":">>> ","color":"gray"},{"selector":"@e[tag=finalist_made,tag=build_competition_builder]","color":"aqua"},{"text":" are your finalists! Now the stream chat will be able to vote on their favourite build! Whichever build gets the most votes in 5 minutes wins.","color":"yellow"}]
function lt20:minigames/build_competition/plot/clear_non_finalist_plots
scoreboard players set TotalJudges BuildGlobal 0
scoreboard players set GameState BuildGlobal 3
bossbar set minecraft:build_judgevote players
bossbar set minecraft:build_viewervote players @a
