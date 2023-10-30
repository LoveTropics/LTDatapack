execute if entity @s[tag=!color.blind] run tag @s add color.blind.temp
execute if entity @s[tag=color.blind.temp] run tag @s add color.blind
execute if entity @s[tag=color.blind,tag=!colorblind.temp] run tag @s remove color.blind
execute if entity @s[tag=color.blind.temp] run tag @s remove colorblind.temp
title @s[tag=color.blind] actionbar [{"translate":"lt.info.colorblind.on", "color": "white"}]
title @s[tag=!color.blind] actionbar [{"translate":"lt.info.colorblind.off", "color": "white"}]
playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.7
#give @p minecraft:bamboo_sign{BlockEntityTag:{front_text:{messages:['[{"translate":"lt.info.colorblind.1","clickEvent":{"action":"run_command","value":"function lt:utility/colorblind"}}]','[{"translate":"lt.info.colorblind.2"}]','[{"translate":"lt.info.colorblind.3"}]','[""]']}}}