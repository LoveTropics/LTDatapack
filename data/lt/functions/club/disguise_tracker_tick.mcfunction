# Execute store success to look for disguises on player heads.
execute in tropicraft:tropics as @a[distance=..35] store success score @s club.disguiseWearTrack run data get entity @s Inventory[{Slot:103b,id:"ltminigames:disguise"}] 
team join club.hideNames @a[scores={club.disguiseWearTrack=1},distance=..35]

# Lava door in here cause fuck it why not <3
execute as @e[tag=club.lava_door] at @s run execute as @a[scores={club.disguiseWearTrack=1},distance=..1.1,y_rotation=-180..0] at @s run function lt:club/door/enter
execute as @e[tag=club.lava_door] at @s run execute as @a[scores={club.disguiseWearTrack=1},distance=..1.1,y_rotation=0..179] at @s run function lt:club/door/exit

execute as @e[tag=club.lava_door] at @s run execute as @a[scores={club.disguiseWearTrack=0},distance=..0.75] at @s run function lt:club/door/deny