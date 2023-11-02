execute if entity @p[tag=!scavengerHunt04] run playsound minecraft:block.note_block.harp voice @s
execute if entity @p[tag=!scavengerHunt04] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @p[tag=scavengerHunt04] run function lt:game/scavenger_hunt/books/04
execute if entity @p[tag=scavengerHunt04] run tag @s add scavengerHunt05