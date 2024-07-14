kill @e[tag=stage.speaker.map]
# because I Fucked up and don twant to edit the structure files
kill @e[type=item_frame,nbt={Item:{id:"minecraft:filled_map"}},distance=..100,x=1550,y=35,z=358]

# Left speaker 1
setblock 1524 47 369 structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"lt:stage/left_speaker_1_empty",posX:-3,posY:-9,posZ:0,sizeX:6,sizeY:9,sizeZ:5}

# left speaker 2
setblock 1548 49 388 structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"lt:stage/left_speaker_2_empty",posX:0,posY:-4,posZ:-2,sizeX:2,sizeY:4,sizeZ:5}

# Right speaker 1
setblock 1524 47 348 structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"lt:stage/right_speaker_1_empty",posX:-3,posY:-9,posZ:-3,sizeX:6,sizeY:9,sizeZ:5}

# right speaker 2
setblock 1548 49 330 structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"lt:stage/right_speaker_2_empty",posX:0,posY:-4,posZ:-2,sizeX:2,sizeY:4,sizeZ:5}

# set redstone blocks
setblock 1524 48 369 redstone_block
setblock 1548 50 388 redstone_block
setblock 1524 48 348 redstone_block
setblock 1548 50 330 redstone_block

# Remove all placed blocks
fill 1524 47 369 1524 48 369 air
fill 1548 49 388 1548 50 388 air
fill 1524 47 348 1524 48 348 air
fill 1548 49 330 1548 50 330 air