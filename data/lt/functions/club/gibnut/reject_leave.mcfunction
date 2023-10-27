tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.reject.leave","color": "gray"}]
tag @s remove club.speaking_with_gibnut
tag @s add club.gibnut_rejected
playsound minecraft:entity.llama.spit master @s ~ ~ ~ 1 1
scoreboard players reset @s club.dialogueTime