execute if entity @s[tag=dropper04] run tellraw @s {"translate": "lt.dropper.reset", "color": "green"}
execute if entity @s[tag=dropper05] run tellraw @s {"translate": "lt.dropper.reset", "color": "green"}
execute if entity @s[tag=dropper06] run tellraw @s {"translate": "lt.dropper.reset", "color": "green"}
execute if entity @s[tag=dropper07] run tellraw @s {"translate": "lt.dropper.reset", "color": "green"}
tag @s remove dropper04
tag @s remove dropper05
tag @s remove dropper06
tag @s remove dropper07
attribute @s minecraft:generic.gravity base set 0.08
