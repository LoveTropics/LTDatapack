execute if entity @p[tag=!scavengerHunt01] run playsound minecraft:block.note_block.harp voice @s
execute if entity @p[tag=!scavengerHunt01] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @p[tag=scavengerHunt01] run function lt:game/scavenger_hunt/books/01
execute if entity @p[tag=scavengerHunt01] run tag @s add scavengerHunt02