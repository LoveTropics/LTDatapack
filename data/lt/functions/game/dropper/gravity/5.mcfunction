execute if score @s[tag=!dropper05] dropper.counter matches 30..39 run attribute @s forge:entity_gravity base set 0.05
execute if score @s[tag=!dropper05] dropper.counter matches 30..39 run tellraw @s {"translate": "lt.dropper.easier"}
tag @s add dropper05
tag @s remove dropper07
tag @s remove dropper06
tag @s remove dropper04