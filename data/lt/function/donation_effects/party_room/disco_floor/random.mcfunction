execute store result storage lt:party_room/disco_floor random int 1 run random value 1..4
execute if data storage lt:party_room/disco_floor {random:1} run setblock ~ ~ ~ ltextras:edgeless_lime_stained_glass
execute if data storage lt:party_room/disco_floor {random:2} run setblock ~ ~ ~ ltextras:edgeless_magenta_stained_glass
execute if data storage lt:party_room/disco_floor {random:3} run setblock ~ ~ ~ ltextras:edgeless_yellow_stained_glass
execute if data storage lt:party_room/disco_floor {random:4} run setblock ~ ~ ~ ltextras:edgeless_green_stained_glass