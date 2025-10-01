$kill @e[tag=forklift_vehicle,nbt={data:{forklift_id:$(forklift_id)}}]
$kill @e[tag=forklift_bd,nbt={data:{forklift_id:$(forklift_id)}}]
$tellraw @a {"text": "> Killed forklift $(forklift_id) in particular, with vitriol and exceptional prejudice.", "color": "dark_red"}