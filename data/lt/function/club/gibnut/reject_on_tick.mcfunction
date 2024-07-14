# Countdown
scoreboard players add @s club.dialogueTime 1

# Leave region detection
execute unless entity @e[tag=club.gibnut,distance=..12] run function lt:club/gibnut/reject_leave

# chat lines
execute if score @s club.dialogueTime matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.1","color": "gray"}]
execute if score @s club.dialogueTime matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 40 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.2","color": "gray"}]
execute if score @s club.dialogueTime matches 40 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 130 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.3","color": "gray"}]
execute if score @s club.dialogueTime matches 130 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 180 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.4","color": "gray"}]
execute if score @s club.dialogueTime matches 180 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 180 run function lt:club/gibnut/reject_end