tag @s add given_tools
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run give @s netherite_pickaxe{Enchantments:[{id:efficiency,lvl:5}],Unbreakable:true} 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_shovel"}]}] run give @s netherite_shovel{Enchantments:[{id:efficiency,lvl:2}],Unbreakable:true} 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:netherite_axe"}]}] run give @s netherite_axe{Enchantments:[{id:sharpness,lvl:5}],Unbreakable:true} 1