execute if entity @s[tag=!scavengerHunt05] run playsound minecraft:block.note_block.harp voice @s
execute if entity @s[tag=!scavengerHunt05] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @s[tag=scavengerHunt05] run function lt:game/scavenger_hunt/books/06
execute if entity @s[tag=scavengerHunt05] run tag @s add scavengerHunt06