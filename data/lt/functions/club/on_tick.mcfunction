# Gibnut Grotto
execute in tropicraft:tropics as @e[tag=club.gibnut] at @s if entity @p[distance=..8,gamemode=!spectator] run execute as @a[distance=..8,tag=!club.has_enough_disguises,tag=!club.speaking_with_gibnut,tag=!club.gibnut_rejected] at @s run function lt:club/gibnut/reject
execute in tropicraft:tropics as @e[tag=club.gibnut] at @s if entity @p[distance=..8,gamemode=!spectator] run execute as @a[distance=..8,tag=club.has_enough_disguises,tag=!club.speaking_with_gibnut,tag=!club.spoken_with_gibnut] at @s run function lt:club/gibnut/accept
execute as @a[tag=club.speaking_with_gibnut,tag=club.has_enough_disguises] at @s run function lt:club/gibnut/accept_on_tick
execute as @a[tag=club.speaking_with_gibnut,tag=!club.has_enough_disguises] at @s run function lt:club/gibnut/reject_on_tick

# Disguise detection (abstracted out for efficiency :))
execute as @e[tag=club.disguise_tracker] at @s if entity @e[type=player,distance=..35] run function lt:club/disguise_tracker_tick

# Bouncer / Club system
execute in tropicraft:tropics as @e[tag=club.the_club] at @s if entity @p[distance=..45] run function lt:club/bouncer/on_tick

# Exit detection
execute as @e[tag=club.internal_exit] at @s run tp @a[distance=..2.5,gamemode=!spectator,tag=club.joined] @e[tag=club.exit,sort=random,limit=1]

# Ensure players who leave disguise tracker entity range have their team reset
execute as @a[scores={club.disguiseWearTrack=1}] at @s unless entity @e[tag=club.disguise_tracker,distance=..35] unless entity @e[tag=club.the_club,distance=..48] run function lt:club/reset_team

