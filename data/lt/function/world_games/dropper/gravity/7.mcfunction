execute if score @s[tag=!dropper07] dropper.counter matches 10..19 run attribute @s minecraft:generic.gravity base set 0.07
execute if score @s[tag=!dropper07] dropper.counter matches 10..19 run tellraw @s {"translate": "lt.dropper.easier", "color": "red"}
tag @s add dropper07
tag @s remove dropper06
tag @s remove dropper05
tag @s remove dropper04
