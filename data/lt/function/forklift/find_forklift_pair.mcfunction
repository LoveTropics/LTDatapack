#$execute as @s at @s run tp @e[type=block_display,tag=forklift_bd_root,nbt={data:{forklift_id:$(forklift_id)}}] @s
#$rotate @e[type=block_display,tag=forklift_bd_passenger,nbt={data:{forklift_id:$(forklift_id)}}] facing @p

#$execute as @s at @s positioned ~ ~0.8 ~ run tp @e[type=block_display,tag=forklift_bd_root,nbt={data:{forklift_id:$(forklift_id)}}] ~ ~ ~ ~ ~
$execute run data modify entity @s Rotation[0] set from entity @e[type=camel,sort=nearest,limit=1,nbt={data:{forklift_id:$(forklift_id)}}] Rotation[0]
data modify entity @s Rotation[1] set value 0f