# function lt:game/stt/toggle_lamp_relative {relX:INT, relY:INT, relZ:INT}

execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run return run setblock ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=true]
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=true] run return run setblock ~ ~ ~ minecraft:waxed_oxidized_copper_bulb[lit=false]