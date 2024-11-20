##
# Quest dialogue example file.
# This file is called every time the players quest.dia.line_time reaches 0 while they have the quest.main.in_dialogue tag.
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.1","color": "gray"}]
execute if score @s quest.dia.target_line matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 40

execute if score @s quest.dia.target_line matches 2 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.2","color": "gray"}]
execute if score @s quest.dia.target_line matches 2 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 65

execute if score @s quest.dia.target_line matches 3 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.3","color": "gray"}]
execute if score @s quest.dia.target_line matches 3 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.line_time 85

execute if score @s quest.dia.target_line matches 4 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.4","color": "gray"}]
execute if score @s quest.dia.target_line matches 4 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 4 run scoreboard players set @s quest.dia.line_time 50

execute if score @s quest.dia.target_line matches 5 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.5","color": "gray"}]
execute if score @s quest.dia.target_line matches 5 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 5 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 6 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.6","color": "gray"}]
execute if score @s quest.dia.target_line matches 6 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 6 run scoreboard players set @s quest.dia.line_time 80

## How the dialogue gets ended
# Sets the target end_state active_dialogue value to whichever int you're using as the success state.
execute if score @s quest.dia.target_line matches 7 run data modify gamedata lt:quest/active_dialogue @s[type=player] end_state set value 2
execute if score @s quest.dia.target_line matches 7 run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
