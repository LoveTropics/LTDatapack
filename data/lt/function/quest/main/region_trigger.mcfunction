##
# This file gets called with arguments whenever a player enters a quest objective authority region. 
## Args {quest_id:"", required_stage:INT, dialogue_blocked:0/1}
# Return if the player hasn't started the quest
$execute unless entity @s[tag=in_quest.$(quest_id)] run return fail
# If being in dialogue stops this region from triggering, check whether the player is in dialogue. If they are, return.
scoreboard players set @s quest.main.misc_eval 1
$execute if score @s quest.main.misc_eval matches $(dialogue_blocked) if entity @s[tag=quest.main.in_dialogue] run return fail
# Check if player is at the desired stage in the quest. If they are, then run the appropriate quest stage_action
$execute store result score @s quest.main.stage_eval run data get gamedata lt:quest/data/$(quest_id) @s[type=player] stage
$execute if score @s quest.main.stage_eval matches $(required_stage) run function lt:quest/main/start_dialogue {quest_id:"$(quest_id)",dialogue_id:"$(dialogue_id)",is_zoneless:$(is_zoneless)}
#$execute if score @s quest.main.stage_eval matches $(required_stage) run function lt:quest/data/$(quest_id)/stage_action/sa_$(required_stage)