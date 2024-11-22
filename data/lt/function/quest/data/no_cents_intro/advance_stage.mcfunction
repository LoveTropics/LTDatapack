$execute as @s at @s run function lt:quest/data/no_cents_intro/stage_action/sa_$(stage)
$scoreboard players set @s quest.main.misc_eval $(stage)
execute store result gamedata lt:quest/data/no_cents_intro @s[type=player] stage int 1 run scoreboard players add @s quest.main.misc_eval 1