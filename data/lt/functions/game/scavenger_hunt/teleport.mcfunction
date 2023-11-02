give @s[tag=!teleportHunt] ltextras:tropicoin 25
tag @s add teleportHunt
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.player.breath voice @a[tag=!teleportHunt,distance=..50] ~ ~ ~ 10 0.1
tp @s @e[tag=scavengerHuntRoom,limit=1]
playsound minecraft:entity.player.breath voice @s ~ ~ ~ 10 0.1
tellraw @s {"translate": "lt.scavenger_hunt.win","color":"green"}