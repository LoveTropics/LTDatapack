# Countdown
scoreboard players add @s club.dialogueTime 1

# Leave region detection
execute unless entity @e[tag=club.gibnut,distance=..12] run function lt:club/gibnut/accept_leave

# chat lines
execute if score @s club.dialogueTime matches 1 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Ahh, welcome!","color": "gray"}]
execute if score @s club.dialogueTime matches 1 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 40 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": I was told to expect your company.","color": "gray"}]
execute if score @s club.dialogueTime matches 40 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 105 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": That disguise is marvelous, an excellent choice.","color": "gray"}]
execute if score @s club.dialogueTime matches 105 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 190 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": But here's me blathering on, knowing full well in your shoes I'd have little care for the meandering of an old man.","color": "gray"}]
execute if score @s club.dialogueTime matches 190 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 240 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Bah! So be it then. I won't keep you much longer.","color": "gray"}]
execute if score @s club.dialogueTime matches 240 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 320 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": You'll want to take these coins. Oh and keep them close, yeah? You'll be needing them.","color": "gray"}]
execute if score @s club.dialogueTime matches 320 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 400 run tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Well now, unless you have something, I'll let ","color": "gray"},{"text": "them ","italic": true,"color": "gray"},{"text": "know you're ready. Farewell.","italic": false,"color": "gray"}]
execute if score @s club.dialogueTime matches 400 run playsound minecraft:entity.illusioner.ambient master @s
execute if score @s club.dialogueTime matches 400 run function lt:club/gibnut/accept_end