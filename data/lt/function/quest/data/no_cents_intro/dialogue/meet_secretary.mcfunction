##
# Quest dialogue example file.
# This file is called every time the players quest.dia.line_time reaches 0 while they have the quest.main.in_dialogue tag.
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.1","color": "gray"}]
execute if score @s quest.dia.target_line matches 1 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 2 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.2","color": "gray"}]
execute if score @s quest.dia.target_line matches 2 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 3 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.3","color": "gray"}]
execute if score @s quest.dia.target_line matches 3 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 4 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.4","color": "gray"}]
execute if score @s quest.dia.target_line matches 4 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 4 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 5 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.5","color": "gray"}]
execute if score @s quest.dia.target_line matches 5 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 5 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 6 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.6","color": "gray"}]
execute if score @s quest.dia.target_line matches 6 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 6 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 7 run tellraw @s [{"text":"Sensible Sam","color":"#2BB6E4"},{"text": ": ","color": "gray"},{"translate": "lt.quest.no_cents_intro.meet_secretary.7","color": "gray"}]
execute if score @s quest.dia.target_line matches 7 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 7 run scoreboard players set @s quest.dia.line_time 80



## How the dialogue gets ended
# Sets the target end_state active_dialogue value to whichever int you're using as the success state.
execute if score @s quest.dia.target_line matches 8 run data modify gamedata lt:quest/active_dialogue @s[type=player] end_state set value 1
execute if score @s quest.dia.target_line matches 8 run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
