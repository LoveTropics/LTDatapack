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


# end_state == 0 | Cancel dialogue with angry exit message
execute if score @s quest.dia.end_state matches 0 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.leave","color": "gray"}]

# end_state == 1 | Cancel dialogue with happy exit message
execute if score @s quest.dia.end_state matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.leave","color": "gray"}]

# end_state == 2 | Dialogue successfully completed
execute if score @s quest.dia.end_state matches 2 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.7","color": "gray"}]


# State-agnostic commands
execute if score @s quest.dia.end_state matches 0.. run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s quest.dia.end_state matches 0.. run tellraw @s {"text":"DEBUG: Dialogue Complete"}