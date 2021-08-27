effect give @a[tag=digsite_player,distance=1..] blindness 5 15 true
execute as @a[tag=digsite_player,distance=1..] at @s run playsound minecraft:entity.squid.squirt master @s
tellraw @a[tag=digsite_player] [{"selector":"@s","color":"gray"},{"text":" has blinded their opponents!","color":"blue"}]
tellraw @s [{"text":"[Powerup]: ","color":"dark_gray"},{"text":"Your enemies have been blinded!","color":"light_purple"}]
