tag @s remove has_speed_boost
playsound minecraft:block.note_block.basedrum master @s
scoreboard players reset @s TRaceSpeedTime
data merge entity @s {Attributes:[{Base:1.7d,Name:"generic.movementSpeed"}]}
