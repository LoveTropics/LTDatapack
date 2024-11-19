## Main on_tick function for all quest systems.

execute as @a[tag=quest.main.in_dialogue] at @s run function lt:quest/main/dialogue_tick with gamedata lt:quest/active_dialogue @s[type=player]