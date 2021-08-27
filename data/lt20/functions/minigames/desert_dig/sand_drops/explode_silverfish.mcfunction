function lt20:minigames/desert_dig/utilities/rng_2
gamerule mobGriefing false
execute if score @s rngDD matches 1 run summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute if score @s rngDD matches 2 run particle minecraft:explosion_emitter
execute if score @s rngDD matches 2 run playsound minecraft:entity.generic.explode master @a[distance=..15]
kill @s
