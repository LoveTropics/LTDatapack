kill @e[tag=hostDummy]
scoreboard objectives add global.utility dummy
scoreboard players set count global.utility 0
execute as @e[tag=temp] run scoreboard players add count global.utility 1
execute if score count global.utility matches 1.. run tag @a[tag=temp,limit=1] add host01
execute if score count global.utility matches 2.. run tag @a[tag=temp,tag=!host01,limit=1] add host02
execute if score count global.utility matches 3.. run tag @a[tag=temp,tag=!host01,tag=!host03] add host03
execute if score count global.utility matches 1.. as @e[tag=host01Marker] at @s run summon dummyplayers:dummy_player ~ ~ ~ {Tags:["dummyHost01", "hostDummy"], Invulnerable:1b, DisabledSlots:4144959}
execute if score count global.utility matches 2.. as @e[tag=host02Marker] at @s run summon dummyplayers:dummy_player ~ ~ ~ {Tags:["dummyHost02", "hostDummy"], Invulnerable:1b, DisabledSlots:4144959}
execute if score count global.utility matches 3.. as @e[tag=host03Marker] at @s run summon dummyplayers:dummy_player ~ ~ ~ {Tags:["dummyHost03", "hostDummy"], Invulnerable:1b, DisabledSlots:4144959}
execute as @p[tag=host01] run data modify entity @e[tag=dummyHost01,limit=1] ProfileID set from entity @s UUID
execute as @p[tag=host02] run data modify entity @e[tag=dummyHost02,limit=1] ProfileID set from entity @s UUID
execute as @p[tag=host03] run data modify entity @e[tag=dummyHost03,limit=1] ProfileID set from entity @s UUID
execute as @e[tag=dummyHost01] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=dummyHost02] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=dummyHost03] at @s run tp @s ~ ~ ~ 45 0
tag @a remove host01
tag @a remove host02
tag @a remove host03
## Easter Egg For Certin Hosts
function lt:utility/hosts/easter_eggs