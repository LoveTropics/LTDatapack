## Main on_tick function for all quest systems.

execute as @a[tag=quest.main.in_dialogue] at @s run function lt:quest/main/dialogue_tick with gamedata lt:quest/active_dialogue @s[type=player]

## If a player is in a quest (has the quests tag) then run that quests function every tick
# Alas every quest tick needs its own line :sad:

execute as @a[tag=in_quest.cents_intro] at @s run function lt:quest/data/cents_intro/quest_tick
execute as @a[tag=in_quest.no_cents_intro] at @s run function lt:quest/data/no_cents_intro/quest_tick

execute as @a[tag=!quest.cents_intro,tag=team.cents] at @s run function lt:quest/data/cents_intro/begin
execute as @a[tag=!quest.no_cents_intro,tag=team.no_cents] at @s run function lt:quest/data/no_cents_intro/begin