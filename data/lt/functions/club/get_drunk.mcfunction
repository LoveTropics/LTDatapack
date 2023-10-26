# Remove advancement
advancement revoke @s only lt:limeade_drink_test

## Only do any of the following if the player has the club.can_enter tag and has an emerald block at Y 44 in their vertical column (in bar detection).

# Create trail effects
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block run playsound minecraft:entity.enderman.teleport master @a[distance=..25] ~ ~ ~ 2
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block run particle portal ~ ~0.25 ~ 0.1 0.3 0.1 0.3 100 force @a[distance=..25]

# Give tags
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block run execute unless entity @s[tag=club.joined] run tag @s add club.first_time_join
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block run tag @s add club.joined

# Play introduction if player is joining for the first time
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block if entity @s[tag=club.first_time_join] run function lt:club/introduction/start 

# Otherwise teleport them to the existing member spawn location
execute if entity @s[tag=club.can_enter,scores={club.disguiseWearTrack=1}] if block ~ 44 ~ emerald_block if entity @s[tag=!club.first_time_join] run function lt:club/introduction/existing_member