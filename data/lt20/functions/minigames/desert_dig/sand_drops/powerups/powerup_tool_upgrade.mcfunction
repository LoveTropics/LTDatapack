clear @s diamond_shovel
replaceitem entity @s weapon.mainhand minecraft:diamond_shovel{CanDestroy:["tropicraft:volcanic_sand"],display:{Name:'{"text":"Upgraded Sand Sifter","color":"dark_purple","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3s}]} 1
playsound minecraft:block.anvil.land master @s
tellraw @s [{"text":"[Powerup]: ","color":"dark_gray"},{"text":"Shovel Upgraded!","color":"light_purple"}]
