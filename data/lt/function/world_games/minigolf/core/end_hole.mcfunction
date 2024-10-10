$title @a[tag=hole$(ForcedAge)Player] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"$(ForcedAge)"}, {"score":{"name":"@e[tag=hole$(ForcedAge)Crab]","objective":"golf.hits"}}]}]
$execute as @a[tag=hole$(ForcedAge)Player] at @s run playsound minecraft:item.goat_horn.sound.0 voice @s
$execute as @a[tag=hole$(ForcedAge)Player] run attribute @s minecraft:player.submerged_mining_speed base set 0.2
$gamemode creative @a[tag=hole$(ForcedAge)Player,tag=golfCreative]
$tag @a[tag=hole$(ForcedAge)Player,gamemode=creative] remove golfCreative
$clear @a[tag=hole$(ForcedAge)Player] #minecraft:hoes
$tag @a[tag=hole$(ForcedAge)Player] remove golfInGame

# Kills the crab
$kill @e[tag=hole$(ForcedAge)Crab]
$kill @e[tag=hole$(ForcedAge)Text]
$execute at @a[tag=hole$(ForcedAge)Player] run kill @e[type=minecraft:experience_orb,distance=..20]
$give @a[tag=hole$(ForcedAge)Player,tag=!hole$(ForcedAge)Played] ltextras:tropicoin 2
#Resets Gamemode / Remove Putters / Remove player from game
$execute as @a[tag=hole$(ForcedAge)Player] run function lt:world_games/minigolf/core/hole_end
#TropiCoins
$tag @a[tag=hole$(ForcedAge)Player] remove golfInGame
$tag @a remove hole$(ForcedAge)Player
$execute at @e[tag=hole$(ForcedAge)End] run summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{explosions:[{shape:small_ball,colors:[I;14602026]}]}}}}
