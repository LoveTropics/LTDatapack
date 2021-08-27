execute at @e[tag=TurtleRaceStart1StructureMarker] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{ignoreEntities:1b,rotation:"NONE",posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,name:"lt20:turtle_race/race_start_1/arcade",sizeY:32,sizeZ:32,showboundingbox:0b}
execute at @e[tag=TurtleRaceStart2StructureMarker] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{ignoreEntities:1b,rotation:"NONE",posX:-30,mode:"LOAD",posY:-32,sizeX:32,posZ:-30,integrity:1.0f,name:"lt20:turtle_race/race_start_2/arcade",sizeY:32,sizeZ:32,showboundingbox:0b}
execute at @e[tag=TRaceTrackTubeMarker] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"brickmaster5001",rotation:"NONE",posX:0,mode:"LOAD",posY:-32,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"lt20:turtle_race/track_pipe/arcade",sizeY:32,sizeZ:32,showboundingbox:0b}
execute at @e[tag=TRaceTrackTubeMarker] run setblock ~ ~ ~ redstone_block
execute at @e[tag=TurtleRaceStart1StructureMarker] run setblock ~ ~ ~ redstone_block
execute at @e[tag=TurtleRaceStart2StructureMarker] run setblock ~ ~ ~ redstone_block

execute at @e[tag=TRaceTrackTubeMarker] run fill ~ ~-1 ~ ~ ~ ~ air
execute at @e[tag=TurtleRaceStart1StructureMarker] run fill ~ ~-1 ~ ~ ~ ~ air
execute at @e[tag=TurtleRaceStart2StructureMarker] run fill ~ ~-1 ~ ~ ~ ~ air

kill @e[type=item]
