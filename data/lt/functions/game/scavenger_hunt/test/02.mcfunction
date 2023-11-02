execute if data entity DinnerBeef ForgeCaps.ltextras:collectibles.collectibles[].tag{title:"Clue 01"} run tag @s add scavengerHunt01
execute if entity @s[tag=!scavengerHunt01] run playsound minecraft:block.note_block.harp voice @s
execute if entity @s[tag=!scavengerHunt01] run tellraw @s {"translate": "lt.scavenger_hunt.order"}
execute if entity @s[tag=scavengerHunt01] run function lt:game/scavenger_hunt/books/02
execute if entity @s[tag=scavengerHunt01] run tag @s add scavengerHunt02