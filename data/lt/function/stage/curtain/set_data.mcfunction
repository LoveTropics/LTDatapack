$data modify entity @e[type=minecraft:marker,distance=..10,limit=1,tag=utility.stage.curtain.in_setup] data merge value {x:$(x),y:$(y),z:$(z),name:$(name),level:1}
$execute as @e[type=minecraft:marker,distance=..10,limit=1,tag=utility.stage.curtain.in_setup] at @s run fill ~-$(x) ~ ~-$(z) ~$(x) ~ ~$(z) ltextras:curtain
tag @e[type=minecraft:marker,distance=..10,limit=1,tag=utility.stage.curtain.in_setup] remove utility.stage.curtain.in_setup
