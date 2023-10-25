# Gibnut Grotto

# Disguise detection (abstracted out for efficiency :))
execute as @e[tag=club.disguise_tracker] at @s if entity @e[type=player,distance=..35] run function lt:club/disguise_tracker_tick

# Ensure players who leave disguise tracker entity range have their team reset
execute as @a[scores={club.disguiseWearTrack=1}] at @s unless entity @e[tag=club.disguise_tracker,distance=..35] run function lt:club/reset_team