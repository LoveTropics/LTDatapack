tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"text": ": Hey! I wasn't done talking, where are you going! Who raised you?! Whatever ... I'll pass the word along to ","color": "gray"},{"text": "them ","italic": true,"color": "gray"},{"text": "that you're ready.","italic": false,"color": "gray"}]
tag @s remove club.speaking_with_gibnut
tag @s add club.spoken_with_gibnut
tag @s add club.needs_invite_2
playsound minecraft:entity.llama.spit master @s ~ ~ ~ 1 1
scoreboard players reset @s club.dialogueTime