function lt20:minigames/desert_dig/utilities/rng_100
execute if score @s rngDD matches 1..2 run function lt20:minigames/desert_dig/sand_drops/spawn_explosive_silverfish
execute if score @s rngDD matches 3..5 run function lt20:minigames/desert_dig/sand_drops/spawn_powerup
execute if score @s rngDD matches 10.. run kill @s
