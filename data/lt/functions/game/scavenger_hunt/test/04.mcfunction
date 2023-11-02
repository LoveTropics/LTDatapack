execute if entity @s[tag=!scavengerHunt03] run playsound minecraft:block.note_block.harp voice @s
execute if entity @s[tag=!scavengerHunt03] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @s[tag=scavengerHunt03] run function lt:game/scavenger_hunt/books/04
execute if entity @s[tag=scavengerHunt03] run tag @s add scavengerHunt04