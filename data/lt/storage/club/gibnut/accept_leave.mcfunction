tellraw @s [{"text":"Ser Gibsworth","color":"gold"},{"translate": "lt.club.dialogue.gibnut.accept.leave","color": "gray"}]
tag @s remove club.speaking_with_gibnut
tag @s add club.spoken_with_gibnut
tag @s add club.needs_invite_2
playsound minecraft:entity.llama.spit master @s ~ ~ ~ 1 1
scoreboard players reset @s club.dialogueTime
give @s ltextras:tropicoin 4