execute as @e[tag=in.dropper] at @s in tropicraft:tropics if block ~ ~-1 ~ create:railway_casing run function lt:game/dropper/fail
execute as @e[tag=in.dropper] at @s in tropicraft:tropics if block ~ ~-1 ~ create:refined_radiance_casing run function lt:game/dropper/win
execute as @e[tag=dropper.fail,tag=!running,limit=1] at @s if block 2578 127 2801 minecraft:oak_button[powered=true] run function lt:game/dropper/timer/3