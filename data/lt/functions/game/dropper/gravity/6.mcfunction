execute if score @s[tag=!dropper06] dropper.counter matches 20..29 run attribute @s forge:entity_gravity base set 0.06
execute if score @s[tag=!dropper06] dropper.counter matches 20..29 run tellraw @s {"translate": "lt.dropper.easier", "color": "red"}
tag @s add dropper06
tag @s remove dropper07
tag @s remove dropper05
tag @s remove dropper04