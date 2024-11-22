## Ends the players current dialogue
# Runs the current dialogues _end function with the players currently store end_state.
$execute as @s at @s run function lt:quest/data/$(quest_id)/dialogue/$(dialogue_id)_end {end_state:$(end_state)}

# Resets tags/scores related to the dialogue system
tag @s remove quest.main.in_dialogue
scoreboard players reset @s quest.dia.line_time
scoreboard players reset @s quest.dia.target_line