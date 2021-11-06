kill @e[tag=p.cb.hit_detection]
execute at @e[tag=p.cb.red] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.red"],ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}]}
execute at @e[tag=p.cb.yellow] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.yellow"],ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}]}
execute at @e[tag=p.cb.orange] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.orange"],ArmorItems:[{},{},{},{id:"minecraft:orange_stained_glass",Count:1b}]}
execute at @e[tag=p.cb.pink] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.pink"],ArmorItems:[{},{},{},{id:"minecraft:pink_stained_glass",Count:1b}]}
execute at @e[tag=p.cb.green] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.green"],ArmorItems:[{},{},{},{id:"minecraft:lime_stained_glass",Count:1b}]}
execute at @e[tag=p.cb.blue] run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["p.cb.hit_detection","p.cb.blue"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
scoreboard players set @e[tag=p.cb.red,tag=p.cb.hit_detection] p.cb.color 0
scoreboard players set @e[tag=p.cb.yellow,tag=p.cb.hit_detection] p.cb.color 1
scoreboard players set @e[tag=p.cb.orange,tag=p.cb.hit_detection] p.cb.color 2
scoreboard players set @e[tag=p.cb.pink,tag=p.cb.hit_detection] p.cb.color 3
scoreboard players set @e[tag=p.cb.green,tag=p.cb.hit_detection] p.cb.color 4
scoreboard players set @e[tag=p.cb.blue,tag=p.cb.hit_detection] p.cb.color 5
scoreboard players set gameState p.cb.global 1
scoreboard players set activeColor p.cb.global 0
scoreboard players set colorRound p.cb.global 0
scoreboard players set currentRound p.cb.global 0
scoreboard players set color1 p.cb.order 0
scoreboard players set color2 p.cb.order 0
scoreboard players set color3 p.cb.order 0
scoreboard players set color4 p.cb.order 0
scoreboard players set color5 p.cb.order 0
scoreboard players set color6 p.cb.order 0
scoreboard players set color7 p.cb.order 0
scoreboard players set color8 p.cb.order 0
scoreboard players set color9 p.cb.order 0
scoreboard players set color10 p.cb.order 0
scoreboard players set color11 p.cb.order 0
scoreboard players set color12 p.cb.order 0