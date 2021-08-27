scoreboard players add @a[tag=!afk] idleTrack 1
scoreboard players set @a[scores={moveCount=1..}] idleTrack 0
scoreboard players set @a[scores={runCount=1..}] idleTrack 0
scoreboard players set @a[scores={flyCount=1..}] idleTrack 0
scoreboard players set @a[scores={sneakCount=1..}] idleTrack 0
scoreboard players set @a[scores={swimCount=1..}] idleTrack 0
scoreboard players reset @a moveCount
scoreboard players reset @a runCount
scoreboard players reset @a flyCount
scoreboard players reset @a sneakCount
scoreboard players reset @a swimCount
execute as @a[tag=!afk,scores={idleTrack=4800..}] at @s run function lt20:server_handler/set_afk
execute as @a[tag=afk,scores={idleTrack=0..10}] at @s run function lt20:server_handler/remove_afk
execute as @a[tag=!joined] at @s run function lt20:server_handler/announce_join
