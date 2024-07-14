execute unless entity @s[gamemode=spectator] store success score @s parkour.test run clear @s #ltextras:everything{ParkourBlacklist:1b}
execute unless entity @s[gamemode=spectator] if score @s parkour.test matches 1 run tellraw @s {"translate":"lt.game.parkour.general.message.collectibles_removed","color": "red"}
execute unless entity @s[gamemode=spectator] if score @s parkour.test matches 1 run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1
execute unless entity @s[gamemode=spectator] run scoreboard players reset @s parkour.test