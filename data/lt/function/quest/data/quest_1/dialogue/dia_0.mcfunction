##
# Quest dialogue example file.
# 
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

execute if score @s quest.dia.target_line matches 7 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.7","color": "gray"}]
execute if score @s quest.dia.target_line matches 7 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.target_line matches 7 run scoreboard players set @s quest.dia.line_time 20

# How the dialogue gets ended
execute if score @s quest.dia.target_line matches 8 run tellraw @s {"text":"DEBUG: Dialogue Complete"}
execute if score @s quest.dia.target_line matches 8 run scoreboard players set @s quest.dia.state 1
execute if score @s quest.dia.target_line matches 8 run scoreboard players set @s quest.dia.line_time 1