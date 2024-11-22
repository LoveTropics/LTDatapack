data modify gamedata lt:parkour @s[type=minecraft:player] number set from entity @e[type=minecraft:marker,sort=nearest,limit=1] data.number
playsound minecraft:block.note_block.banjo voice @s
tellraw @s {"translate":"lt.game.parkour.general.checkpoint_reached "}