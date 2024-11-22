##
# begin function for the QUEST_ID quest.
##

## Quest Tags
tag @s add in_quest.QUEST_ID
##

## Quest Data
data merge gamedata lt:quest/data/QUEST_ID @s[type=player] {stage:0,quest_id:"QUEST_ID"}
##

## Per-quest custom functionality.