execute in tropicraft:tropics run fill 2170 123 2615 2170 122 2615 air
execute in tropicraft:tropics run data merge entity @e[tag=disguises.player.text,limit=1,sort=nearest] {text:'{"color":"#6D00AD","text":"Ⓞ"}'}
execute in tropicraft:tropics run kill @e[current_world=true,type=item,nbt={Item:{id:"minecraft:purple_stained_glass"}}]