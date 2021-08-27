effect give @a[tag=digsite_player,distance=1..] mining_fatigue 5 1 true
execute as @a[tag=digsite_player,distance=1..] at @s run playsound minecraft:entity.llama.spit master @s
tellraw @a[tag=digsite_player] [{"selector":"@s","color":"gray"},{"text":" has fatigued their opponents","color":"blue"}]
tellraw @s [{"text":"[Powerup]: ","color":"dark_gray"},{"text":"Your enemies have been fatigued!","color":"light_purple"}]
