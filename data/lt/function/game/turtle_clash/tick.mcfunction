scoreboard players set @a[tag=game.turtle_clash2] game.turtle_clash 1
execute as @e[tag=verymuchatemptag] on leasher on passengers run scoreboard players add @s game.turtle_clash 1
execute as @a[tag=game.turtle_clash2] if score @s game.turtle_clash matches 1 run kill @s[gamemode=adventure]
