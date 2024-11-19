## Removes launch pad (breeze) and all associated charges (wind_charge)
playsound minecraft:block.note_block.snare master @s
kill @e[type=breeze,tag=map.launch_pad,limit=1,sort=nearest,distance=..5]
kill @e[type=wind_charge,tag=map.launch_pad_charge,limit=1,sort=nearest,distance=..5]
kill @e[type=marker,tag=map.launch_pad_puller,limit=1,sort=nearest,distance=..5]