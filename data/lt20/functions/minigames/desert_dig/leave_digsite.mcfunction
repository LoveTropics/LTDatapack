execute as @s[tag=digsite_player] at @s run playsound minecraft:block.note_block.chime master @s
execute as @s[tag=digsite_player] at @s run title @s actionbar {"text":"You have left the DigSite lobby!","color":"red","bold":true}
execute as @s[tag=digsite_player] at @s run tag @s remove digsite_player
