execute if entity @p[tag=!scavengerHunt06] run playsound minecraft:block.note_block.harp voice @s
execute if entity @p[tag=!scavengerHunt06] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @p[tag=scavengerHunt06] run function lt:game/scavenger_hunt/books/06