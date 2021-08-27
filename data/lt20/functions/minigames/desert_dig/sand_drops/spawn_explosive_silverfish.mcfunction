summon minecraft:silverfish ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,Tags:["explosive_silverfish","new_explosive_silverfish"],CustomName:'{"text":"Sand Worm","color":"red","bold":true}',Attributes:[{Name:generic.followRange,Base:12},{Name:generic.movementSpeed,Base:0.45},{Name:generic.attackDamage,Base:0.5},{Name:generic.attackKnockback,Base:0}]}
scoreboard players set @e[tag=new_explosive_silverfish] digsiteSilver 40
execute at @e[tag=new_explosive_silverfish] run playsound minecraft:entity.shulker.shoot master @a[distance=..15]
tag @e[tag=new_explosive_silverfish] remove new_explosive_silverfish
kill @s
