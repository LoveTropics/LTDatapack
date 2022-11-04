tellraw @s [{"text":"> ","color":"dark_gray"},{"text":"Teleport Complete!","color":"yellow"}]

# Location : TEMPLATE
#tp @s[tag=map.player.looking.TEMPLATE] XX YY ZZ YAW PITCH
tp @s[tag=map.player.looking.mountain_village] 822 86 1452 10 -10
tp @s[tag=map.player.looking.research_institute] 1350 63 1362 90 -20
tp @s[tag=map.player.looking.banyan_tree] 543.02 65.94 956.99 90 -50
tp @s[tag=map.player.looking.crab_golf] 1055 64 448 90 0
tp @s[tag=map.player.looking.free_build_1] 740 66 479 90 0
tp @s[tag=map.player.looking.free_build_2] 917 66 973 180 0
tp @s[tag=map.player.looking.free_build_3] 593 67 1259 -90 0
tp @s[tag=map.player.looking.resort] 545 63 371 135 -15
tp @s[tag=map.player.looking.theatre] 775 66 1369 -70 0



execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 2 1
