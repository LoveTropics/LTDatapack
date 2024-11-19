##
# Quest dialogue example file.
# 
##

# Increment line
scoreboard players add @s quest.dia.target_line 1

## Standard Dialogue
execute if score @s quest.dia.target_line matches 1 run tellraw @s {"text":"daddd1"}
execute if score @s quest.dia.target_line matches 1 run scoreboard players set @s quest.dia.line_time 50
execute if score @s quest.dia.target_line matches 2 run tellraw @s {"text":"daddd2"}
execute if score @s quest.dia.target_line matches 2 run scoreboard players set @s quest.dia.line_time 60

# How the dialogue gets ended
execute if score @s quest.dia.target_line matches 3 run tellraw @s {"text":"DEBUG: Dialogue Complete"}
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.state 1
execute if score @s quest.dia.target_line matches 3 run scoreboard players set @s quest.dia.line_time 5