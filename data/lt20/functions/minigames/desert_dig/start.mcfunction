scoreboard players set GameState DigsiteGlobal 1
function lt20:minigames/desert_dig/reset_digsite
clear @a[tag=digsite_player]
effect clear @a[tag=digsite_player]
effect give @a[tag=digsite_player] saturation 1 10 true
effect give @a[tag=digsite_player] instant_health 1 10 true
effect give @a[tag=spleef_player] resistance 125 10 true
execute as @e[tag=digsite_corner] at @s run fill ~1 ~-1 ~1 ~25 ~-6 ~25 sand keep
give @a[tag=digsite_player] minecraft:diamond_shovel{CanDestroy:["tropicraft:volcanic_sand"],display:{Name:"{\"text\":\"The Sand Sifter\",\"color\":\"gold\",\"italic\":false}"},Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]} 1
scoreboard players set RemainingTime Digsite 2500
execute as @a at @s run playsound minecraft:block.note_block.basedrum master @s
title @a title " "
title @a subtitle {"text":"-x-  Dig!  -x-","color":"green","bold":true}
execute as @a[tag=digsite_player] at @s run tp @s @e[tag=digsite_structure_corner,sort=random,limit=1]
gamemode adventure @a[tag=digsite_player]
scoreboard objectives setdisplay sidebar digsitescore
