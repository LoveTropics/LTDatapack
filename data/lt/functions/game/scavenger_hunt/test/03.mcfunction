execute if entity @s[tag=!scavengerHunt02] run playsound minecraft:block.note_block.harp voice @s
execute if entity @s[tag=!scavengerHunt02] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @s[tag=scavengerHunt02] run function lt:game/scavenger_hunt/books/03
execute if entity @s[tag=scavengerHunt02] run tag @s add scavengerHunt03