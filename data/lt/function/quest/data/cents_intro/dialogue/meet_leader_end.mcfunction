##
# Quest dialogue end example file.
# This file should be called whenever the player needs to be exited from a dialogue. This can be as a result of: 
# - Dialogue finishing, 
# - Player cancels dialogue by joining a minigame, leaving the area, etc ...
# - Player disconnecting mid dialogue.
# In order for this file to work it must be passed the following json {end_state: INT}
# This value will be stored to the players quest.dia.end_state variable, and can be used however you like.
##
$scoreboard players set @s quest.dia.end_state $(end_state)

# end_state == 0 | Cancel dialogue
execute if score @s quest.dia.end_state matches 0 run tellraw @s [{"text":"Change Centara","color":"#E47E02"},{"text": ": ","color": "gray"},{"translate": "lt.quest.cents_intro.meet_leader.cancel","color": "gray"}]
execute if score @s quest.dia.end_state matches 0 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.end_state matches 0 run playsound minecraft:block.note_block.snare master @s

# end_state == 1 | Compelte dialogue
execute if score @s quest.dia.end_state matches 1 run function lt:quest/data/cents_intro/advance_stage with gamedata lt:quest/data/cents_intro @s[type=player]


# State-agnostic commands

#execute if score @s quest.dia.end_state matches 0.. run tellraw @s {"text":"DEBUG: Dialogue Complete"}