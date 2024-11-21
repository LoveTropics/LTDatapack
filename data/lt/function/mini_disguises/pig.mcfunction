disguise as minecraft:pig
effect give @s minecraft:speed 60 10 true
scoreboard players set @s mini_disguises.clock 60
advancement revoke @s only lt:mini_disguises/pig
playsound minecraft:entity.pig.ambient ambient @s ~ ~ ~ 2 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.15 1 0.15 0 50