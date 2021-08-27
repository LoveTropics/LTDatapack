tag @s add turtle_racer
execute if score Mode TRaceGlobal matches 1 as @s at @s run function lt20:minigames/turtle_race/player/give_position_normal_mode
execute if score Mode TRaceGlobal matches 2 run function lt20:minigames/turtle_race/player/give_position_arcade_mode
execute if score Mode TRaceGlobal matches 3 run function lt20:minigames/turtle_race/player/give_position_flying_mode
execute if score Mode TRaceGlobal matches 3 run effect give @s minecraft:slowness 10 10 true
