## on_tick function for the dialogue aspect of the quest system\
# Ran with arguments {has_dialogue:0,quest_id:"string",dialogue_id:"string"}

# If quest.dia.line_time is 0 and dialogue is still ongoing (quest.dia.state != 1)
$execute as @s at @s if score @s quest.dia.line_time matches 0 if score @s quest.dia.state matches 0 run function lt:quest/data/$(quest_id)/dialogue/$(dialogue_id) with gamedata lt:quest/active_dialogue @s[type=player]

# If dialogue is over then finish it and advance the associated quests stage.


# Decrement players dialogue score.
execute if score @s quest.dia.line_time matches 0.. run scoreboard players remove @s quest.dia.line_time 1