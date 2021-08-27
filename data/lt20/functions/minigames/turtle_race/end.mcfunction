#execute in tropicraft:tropics if score GameState TRaceGlobal matches 1 run tp @a[tag=turtle_racer] -681 133 2476
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
scoreboard players set GameState TRaceGlobal 4
schedule function lt20:minigames/turtle_race/cancel_causes/game_over 30s

# Display end message for all players
tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n---------- ","color":"dark_aqua"},{"text":"Winners!","color":"yellow"},{"text":" ----------\n","color":"dark_aqua"}]

tellraw @a [{"text":"\n        [1st]","color":"green"},{"text":" | ","color":"gray"},{"selector":"@a[limit=1,scores={TRacePlayerPlace=1}]"}]

execute if score PlayerCount TRaceGlobal matches 2.. run tellraw @a [{"text":"\n        [2nd]","color":"blue"},{"text":" | ","color":"gray"},{"selector":"@a[limit=1,scores={TRacePlayerPlace=2}]"}]

execute if score PlayerCount TRaceGlobal matches 3.. run tellraw @a [{"text":"\n        [3rd]","color":"yellow"},{"text":" | ","color":"gray"},{"selector":"@a[limit=1,scores={TRacePlayerPlace=3}]"}]

tellraw @a {"text":"\n        30 Seconds to race finish ...","color":"gray"}

tellraw @a {"text":"\n----------------------------","color":"dark_aqua"}
