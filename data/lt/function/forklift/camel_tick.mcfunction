#$say Camel $(forklift_id) is being ridden!
$execute as @s at @s unless entity @p[distance=..5,tag=forklift_rider,tag=forklift_rider.$(forklift_id)] run tag @s remove forklift.has_rider
#$execute unless entity @p[distance=..5,tag=forklift_rider,tag=forklift_rider.$(forklift_id)] run return
effect give @s invisibility infinite 5 true

$execute as @s at @s anchored feet positioned ^ ^ ^5.0 positioned ~ ~2 ~ run execute as @a[tag=forklift_rider,tag=!forklift_rider.$(forklift_id),limit=1,sort=nearest,distance=..2.5,tag=forklift_vehicle] run damage @s 0.2 minecraft:mace_smash
