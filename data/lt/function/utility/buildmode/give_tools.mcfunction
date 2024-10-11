tag @s add given_tools
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run give @s minecraft:netherite_pickaxe[minecraft:enchantments={levels:{efficiency:5}},minecraft:unbreakable={}] 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_shovel"}]}] run give @s minecraft:netherite_shovel[minecraft:enchantments={levels:{efficiency:2}},minecraft:unbreakable={}] 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_axe"}]}] run give @s minecraft:netherite_axe[minecraft:enchantments={levels:{sharpness:5}},minecraft:unbreakable={}] 1