###
# cents_intro quest_tick file
###

## Get players stage in quest
execute store result score @s quest.main.stage_eval run data get gamedata lt:quest/data/cents_intro @s[type=player] stage

##
execute if score @s quest.main.stage_eval matches 0 run function lt:quest/data/cents_intro/stage_tick/tick_0