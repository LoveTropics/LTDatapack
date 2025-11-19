build disable @a
execute as @a[gamemode=survival] run fly disable
$protect exclusion add role build_area_$(zone) everyone
$poi disable lt:milestone/zone_$(zone)
