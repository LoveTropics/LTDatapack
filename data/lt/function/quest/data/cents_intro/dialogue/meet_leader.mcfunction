##
# Quest dialogue example file.
# This file is called every time the players quest.dia.line_time reaches 0 while they have the quest.main.in_dialogue tag.
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.1","color": "gray"}]
execute if score @s quest.dia.target_line matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 2 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.2","color": "gray"}]
execute if score @s quest.dia.target_line matches 2 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 3 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.3","color": "gray"}]
execute if score @s quest.dia.target_line matches 3 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 4 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.4","color": "gray"}]
execute if score @s quest.dia.target_line matches 4 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 4 run scoreboard players set @s quest.dia.line_time 60

#execute if score @s quest.dia.target_line matches 5 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.5","color": "gray"}]
#execute if score @s quest.dia.target_line matches 5 run playsound minecraft:entity.illusioner.ambient master @s
#execute if score @s quest.dia.target_line matches 5 run scoreboard players set @s quest.dia.line_time 60

#execute if score @s quest.dia.target_line matches 6 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.6","color": "gray"}]
#execute if score @s quest.dia.target_line matches 6 run playsound minecraft:entity.illusioner.ambient master @s
#execute if score @s quest.dia.target_line matches 6 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 5 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.7","color": "gray"}]
execute if score @s quest.dia.target_line matches 5 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 5 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 6 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.8","color": "gray"}]
execute if score @s quest.dia.target_line matches 6 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 6 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 7 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.9","color": "gray"}]
execute if score @s quest.dia.target_line matches 7 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 7 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 8 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.10","color": "gray"}]
execute if score @s quest.dia.target_line matches 8 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 8 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 9 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.11","color": "gray"}]
execute if score @s quest.dia.target_line matches 9 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 9 run playsound minecraft:entity.pillager.celebrate master @s
execute if score @s quest.dia.target_line matches 9 run scoreboard players set @s quest.dia.line_time 20

execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"text":"[Dan]","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"text":"Claire","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"text":"Meddlesome Mike","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"text":"Hacker Hank","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run tellraw @s [{"selector":"@s","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.12","color": "gray"}]
execute if score @s quest.dia.target_line matches 10 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 10 run playsound minecraft:entity.pillager.celebrate master @s
execute if score @s quest.dia.target_line matches 10 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 11 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.13","color": "gray"}]
execute if score @s quest.dia.target_line matches 11 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 11 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 12 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.14new","color": "gray"}]
execute if score @s quest.dia.target_line matches 12 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 12 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 13 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.15new","color": "gray"}]
execute if score @s quest.dia.target_line matches 13 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 13 run scoreboard players set @s quest.dia.line_time 60

execute if score @s quest.dia.target_line matches 14 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.16new","color": "gray"}]
execute if score @s quest.dia.target_line matches 14 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 14 run scoreboard players set @s quest.dia.line_time 60

#execute if score @s quest.dia.target_line matches 17 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.17","color": "gray"}]
#execute if score @s quest.dia.target_line matches 17 run playsound minecraft:entity.illusioner.ambient master @s
#execute if score @s quest.dia.target_line matches 17 run scoreboard players set @s quest.dia.line_time 60


## How the dialogue gets ended
# Sets the target end_state active_dialogue value to whichever int you're using as the success state.
execute if score @s quest.dia.target_line matches 15 run data modify gamedata lt:quest/active_dialogue @s[type=player] end_state set value 1
execute if score @s quest.dia.target_line matches 15 run function lt:quest/main/end_dialogue with gamedata lt:quest/active_dialogue @s[type=player]
