##
# Quest dialogue example file.
# This file is called every time the players quest.dia.line_time reaches 0 while they have the quest.main.in_dialogue tag.
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.1","color": "gray"}]
execute if score @s quest.dia.target_line matches 1 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 2 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.2","color": "gray"}]
execute if score @s quest.dia.target_line matches 2 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 3 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.3","color": "gray"}]
execute if score @s quest.dia.target_line matches 3 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 4 run tellraw @s [{"text":"[PA]","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.4","color": "gray"}]
execute if score @s quest.dia.target_line matches 4 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 4 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 5 run tellraw @s [{"text":"[PA]","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.5","color": "gray"}]
execute if score @s quest.dia.target_line matches 5 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 5 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 6 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.6","color": "gray"}]
execute if score @s quest.dia.target_line matches 6 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 6 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 7 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.7","color": "gray"}]
execute if score @s quest.dia.target_line matches 7 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 7 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 8 run tellraw @s [{"text":"[Dan]","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.8","color": "gray"}]
execute if score @s quest.dia.target_line matches 8 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 8 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 9 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.9","color": "gray"}]
execute if score @s quest.dia.target_line matches 9 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 9 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.10","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 10 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 11 run tellraw @s [{"text":"[Dan]","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.11","color": "gray"}]
execute if score @s quest.dia.target_line matches 11 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 11 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 12 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 12 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 12 run scoreboard players set @s quest.dia.line_time 80

execute if score @s quest.dia.target_line matches 13 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.enter_bunker.13","color": "gray"}]
execute if score @s quest.dia.target_line matches 13 run playsound minecraft:entity.illusioner.ambient master @s ~ ~ ~ 1 2
execute if score @s quest.dia.target_line matches 13 run scoreboard players set @s quest.dia.line_time 80



## How the dialogue gets ended
# Sets the target end_state active_dialogue value to whichever int you're using as the success state.
execute if score @s quest.dia.target_line matches 14 run data modify gamedata lt:quest/active_dialogue @s[type=player] end_state set value 1
execute if score @s quest.dia.target_line matches 14 run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
