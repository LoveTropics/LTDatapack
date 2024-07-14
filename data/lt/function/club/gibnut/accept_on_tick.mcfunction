# Countdown
scoreboard players add @s club.dialogueTime 1

# Leave region detection
execute unless entity @e[tag=club.gibnut,distance=..12] run function lt:club/gibnut/accept_leave

# chat lines
execute if score @s club.dialogueTime matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.1","color": "gray"}]
execute if score @s club.dialogueTime matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 40 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.2","color": "gray"}]
execute if score @s club.dialogueTime matches 40 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 105 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.3","color": "gray"}]
execute if score @s club.dialogueTime matches 105 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 190 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.4","color": "gray"}]
execute if score @s club.dialogueTime matches 190 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 240 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.5","color": "gray"}]
execute if score @s club.dialogueTime matches 240 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 320 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.6","color": "gray"}]
execute if score @s club.dialogueTime matches 320 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 400 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.7","color": "gray"}]
execute if score @s club.dialogueTime matches 400 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 400 run function lt:club/gibnut/accept_end