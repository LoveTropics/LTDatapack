## Cancel active dialogue (if it exists) when a player exits a dialogue_region
#tellraw @s "Exitted dialogue region"
execute unless entity @s[tag=quest.main.in_dialogue] run return fail
execute store result score @s quest.main.misc_eval run data get gamedata lt:quest/active_dialogue @s[type=player] is_zoneless
execute if score @s quest.main.misc_eval matches 1 run return fail
execute as @s at @s run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
