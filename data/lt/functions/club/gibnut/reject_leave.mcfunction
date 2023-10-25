tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Hey! I wasn't done talking, where are you going! Who raised you?! Whatever ... I don't think you'll find enough disguises anyways.","color": "gray"}]
tag @s remove club.speaking_with_gibnut
tag @s add club.gibnut_rejected
playsound minecraft:entity.llama.spit master @s ~ ~ ~ 1 1
scoreboard players reset @s club.dialogueTime