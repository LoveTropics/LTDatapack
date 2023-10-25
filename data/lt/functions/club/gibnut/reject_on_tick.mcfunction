# Countdown
scoreboard players add @s club.dialogueTime 1

# Leave region detection
execute unless entity @e[tag=club.gibnut,distance=..12] run function lt:club/gibnut/reject_leave

# chat lines
execute if score @s club.dialogueTime matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Hmm, curious.","color": "gray"}]
execute if score @s club.dialogueTime matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 40 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": You've made it all the way here yet you lack what is needed.","color": "gray"}]
execute if score @s club.dialogueTime matches 40 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 130 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": That simply won't do.","color": "gray"}]
execute if score @s club.dialogueTime matches 130 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 180 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Until the time you return with five, non-milestone disguises, I will speak no further.","color": "gray"}]
execute if score @s club.dialogueTime matches 180 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 180 run function lt:club/gibnut/reject_end