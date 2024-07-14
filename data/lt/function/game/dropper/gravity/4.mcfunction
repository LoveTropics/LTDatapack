execute if score @s[tag=!dropper04] dropper.counter matches 40..49 run attribute @s minecraft:generic.gravity base set 0.04
execute if score @s[tag=!dropper04] dropper.counter matches 40..49 run tellraw @s {"translate": "lt.dropper.easier", "color": "red"}
tag @s add dropper04
tag @s remove dropper06
tag @s remove dropper05
tag @s remove dropper07
