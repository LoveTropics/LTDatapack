## Takes the following arguments to define starting parameters for dialogue.
# {
#   quest_id: string // The namespace for the players currently active quest
#   dialogue_id: string // The id for which set of quest dialogue to play. (0 -> X)
# }
##

## Setup player for dialogue.
# Error catching!!
$execute if entity @s[tag=quest.main.in_dialogue] run tellraw @s {"text":"> quest_system - Error: Tried to start new dialogue ($(dialogue_id)) for quest ($(quest_id)) but you are already in a dialogue. Greedy."}
execute if entity @s[tag=quest.main.in_dialogue] run return fail

tag @s add quest.main.in_dialogue
scoreboard players set @s quest.dia.line_time 0
scoreboard players set @s quest.dia.target_line 0
scoreboard players set @s quest.dia.state 0

$data merge gamedata lt:quest/active_dialogue @s[type=player] {has_dialogue:1,quest_id:"$(quest_id)",dialogue_id:"$(dialogue_id)"}

# Run the target dialogue
$execute as @s at @s run function lt:quest/data/$(quest_id)/dialogue/$(dialogue_id)