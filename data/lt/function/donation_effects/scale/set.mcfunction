execute store result storage lt:hosts scale double 0.1 run scoreboard players get Scale events.hosts
execute as @a[role=host] run function lt:donation_effects/scale/set2 with storage lt:hosts
execute as @a[tag=fake_host] run function lt:donation_effects/scale/set2 with storage lt:hosts