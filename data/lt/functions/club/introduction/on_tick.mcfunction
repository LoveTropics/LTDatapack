# Countdown joinClock obj
scoreboard players remove @a[tag=club.first_time_join] club.joinClock 1

# Run title functions at specific joinClock values
execute as @a[tag=club.first_time_join] at @s if score @s club.joinClock matches 71 run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1
execute as @a[tag=club.first_time_join] at @s if score @s club.joinClock matches 55 run function lt:club/introduction/unlock
execute as @a[tag=club.first_time_join] at @s if score @s club.joinClock matches ..0 run function lt:club/introduction/end

# Play chain break effect during first 45 ticks
execute as @a[tag=club.first_time_join] at @s if score @s club.joinClock matches 52..100 run playsound minecraft:block.chain.place master @s ~ ~ ~ 0.25
