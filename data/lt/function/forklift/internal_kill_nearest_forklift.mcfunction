$kill @e[tag=forklift_vehicle,nbt={data:{forklift_id:$(forklift_id)}}]
$kill @e[tag=forklift_bd,nbt={data:{forklift_id:$(forklift_id)}}]
$tellraw @s {"text": "> Killed nearest forklift $(forklift_id), with malice and a normal amount of prejudice.", "color": "gold"}