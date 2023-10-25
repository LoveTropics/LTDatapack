# Remove advancement
advancement revoke @s only lt:limeade_drink_test

# Create trail effects
playsound minecraft:entity.enderman.teleport master @a[distance=..25] ~ ~ ~ 2
particle portal ~ ~0.25 ~ 0.1 0.3 0.1 0.3 100 force @a[distance=..25]

# Give tags
execute unless entity @s[tag=club.joined] run tag @s add club.first_time_join
tag @s add club.joined

# Play introduction if player is joining for the first time
execute if entity @s[tag=club.first_time_join] run function lt:club/introduction/start 

# Otherwise teleport them to the existing member spawn location
execute if entity @s[tag=!club.first_time_join] run function lt:club/introduction/existing_member