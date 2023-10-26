# Team detection
# Execute store success to look for disguises on player heads.
execute in tropicraft:tropics as @a[distance=..45] store success score @s club.disguiseWearTrack run data get entity @s Inventory[{Slot:103b,id:"ltminigames:disguise"}] 
team leave @a[scores={club.disguiseWearTrack=0},distance=..45,team=club.hideNames]
team join club.hideNames @a[scores={club.disguiseWearTrack=1},distance=..45,tag=club.joined,gamemode=!spectator]

# Bouncer stuff
team join club.hideNames @e[tag=club.bouncer,type=minecraft:vindicator]
execute as @a[distance=..45,scores={club.disguiseWearTrack=0},gamemode=!spectator,gamemode=!creative,tag=club.joined] at @s run function lt:club/bouncer/trap_idiot
execute as @a[distance=..45,gamemode=!spectator,gamemode=!creative,tag=!club.joined] at @s run function lt:club/bouncer/kick_out_non_member