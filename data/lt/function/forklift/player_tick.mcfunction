#$say player is riding $(forklift_id)
$tag @e[type=camel,sort=nearest,limit=1,nbt={data:{forklift_id:$(forklift_id)}}] add forklift.has_rider
tag @s add forklift_rider
$tag @s add forklift_rider.$(forklift_id)
effect give @s invisibility 1 1 true
