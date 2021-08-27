scoreboard players reset @s TRaceGiveTime
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 2 1
playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 2 1
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 50
title @s times 0 20 0
title @s title {"text":"Powerup","color":"blue"}
function lt20:server_handler/utilities/rng_4
clear @s player_head{turtleRaceSabatoge:1b}
execute if score @s rngDD matches 1 run replaceitem entity @s weapon.mainhand minecraft:player_head{shockSabatoge:1b,turtleRaceSabatoge:1b,display:{Name:'[{"text":"Shock Jelly","color":"aqua","italic":false},{"text":" | ","color":"dark_gray","italic":false},{"text":"Drop to use.","color":"yellow","italic":true}]'},SkullOwner:{Id:"29f12574-99da-4755-947d-4bc357bcf062",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTVhNDVlMjRjYWRjMThmMzA1MjkxYWY0NWEyMmZjOGIzNjA3YTY3NWJhYTMxZWQ1ODNkM2E1NmIxNTIyM2M1YyJ9fX0="}]}}} 1
execute if score @s rngDD matches 1 run title @s subtitle [{"text":"| "},{"text":"Shock Jelly","color":"aqua"},{"text":" |"}]

execute if score @s rngDD matches 2 run replaceitem entity @s weapon.mainhand minecraft:player_head{inkSabatoge:1b,turtleRaceSabatoge:1b,display:{Name:'[{"text":"Ink Bomb","color":"black","italic":false},{"text":" | ","color":"dark_gray","italic":false},{"text":"Drop to use.","color":"yellow","italic":false}]'},SkullOwner:{Id:"e9a90a45-7296-4abd-92ce-da34cd265d20",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQ5MDg4ODYxZmMxZTE0YjYwNWE1MTU0ZDc5ZmE3ZGQ2NWUwNDFhNWM2MzVkMjQ3NDRiM2UxNTI1MzUifX19"}]}}} 1
execute if score @s rngDD matches 2 run title @s subtitle [{"text":"| "},{"text":"Ink Bomb","color":"black"},{"text":" |"}]

execute if score @s rngDD matches 3 run replaceitem entity @s weapon.mainhand minecraft:player_head{slowSabatoge:1b,turtleRaceSabatoge:1b,display:{Name:'[{"text":"Slow Aura","color":"gray","italic":false},{"text":" | ","color":"dark_gray","italic":false},{"text":"Drop to use.","color":"yellow","italic":false}]'},SkullOwner:{Id:"5288f782-48b9-4bf9-b615-daaa8a0e39ad",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzliNjI1YjgwY2ZiMGJhZjA0ZWViYmQyY2IxZmY5ZjEwMTBiMDJmNGRmMjFiM2JhZjg2ZWI4MTJhYjdlYmE4YiJ9fX0="}]}}} 1
execute if score @s rngDD matches 3 run title @s subtitle [{"text":"| "},{"text":"Slow Aura","color":"gray"},{"text":" |"}]

execute if score @s rngDD matches 4 run replaceitem entity @s weapon.mainhand minecraft:player_head{rocketSabatoge:1b,turtleRaceSabatoge:1b,display:{Name:'[{"text":"Shock Rocket","color":"gold","italic":false},{"text":" | ","color":"dark_gray","italic":false},{"text":"Drop to use.","color":"yellow","italic":false}]'},SkullOwner:{Id:"3721d44c-6c23-46f0-a1ce-4b51c01322e9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ1ZTdkMTkxNDc4ZWZhZmUyM2E2NTRkZTgwMjc2MGY0MmEwZGQ4M2RmYzk4MTdmODdkNDYwZmNmMzI5NzhkZiJ9fX0="}]}}}
execute if score @s rngDD matches 4 run title @s subtitle [{"text":"| "},{"text":"Shock Rocket","color":"gold"},{"text":" |"}]
