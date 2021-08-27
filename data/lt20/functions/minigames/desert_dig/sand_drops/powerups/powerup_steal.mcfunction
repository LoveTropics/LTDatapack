tag @s add point_stealer
execute as @a[tag=digsite_player,distance=1..] at @s if score @s digsitescore matches 5.. run scoreboard players add @a[tag=point_stealer] digsitescore 1
execute as @a[tag=digsite_player,distance=1..] at @s if score @s digsitescore matches 5.. run execute as @e[tag=point_stealer] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 2 2
execute as @a[tag=digsite_player,distance=1..] at @s if score @s digsitescore matches 5.. run scoreboard players remove @s digsitescore 1
tag @s remove point_stealer
execute as @a[tag=digsite_player,distance=1..] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 2 0.5
tellraw @a[tag=digsite_player] [{"selector":"@s","color":"gray"},{"text":" has stolen some of their opponents points!","color":"blue"}]
tellraw @s [{"text":"[Powerup]: ","color":"dark_gray"},{"text":"You have stolen points from your opponents","color":"light_purple"}]
