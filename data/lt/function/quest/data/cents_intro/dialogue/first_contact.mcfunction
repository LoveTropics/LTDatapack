##
# Quest dialogue example file.
# This file is called every time the players quest.dia.line_time reaches 0 while they have the quest.main.in_dialogue tag.
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s [{"text":"???","color":"#B24D01"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.initial_contact.1","color": "gray"}]
execute if score @s quest.dia.target_line matches 1 run playsound minecraft:entity.ender_eye.death master @s
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 2 run tellraw @s [{"text":"???","color":"#B24D01"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.initial_contact.2","color": "gray"}]
execute if score @s quest.dia.target_line matches 2 run playsound minecraft:entity.ender_eye.death master @s
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 35


## How the dialogue gets ended
# Sets the target end_state active_dialogue value to whichever int you're using as the success state.
execute if score @s quest.dia.target_line matches 3 run data modify gamedata lt:quest/active_dialogue @s[type=player] end_state set value 1
execute if score @s quest.dia.target_line matches 3 run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
