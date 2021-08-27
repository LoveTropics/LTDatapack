scoreboard players set 50000 SignatureGlobal 50000
scoreboard players set 10 SignatureGlobal 10
scoreboard players set 1500000 SignatureGlobal 1500000
scoreboard players set 1000000 SignatureGlobal 1000000
scoreboard players set 100000 SignatureGlobal 100000
scoreboard players operation SecsLeft SignatureGlobal *= 50000 SignatureGlobal
scoreboard players operation TotalViolations SignatureGlobal *= 1500000 SignatureGlobal
scoreboard players operation SecsLeft SignatureGlobal += TotalViolations SignatureGlobal
scoreboard players operation ScoreInMillions SignatureGlobal = SecsLeft SignatureGlobal
scoreboard players operation ScoreInThousands SignatureGlobal = SecsLeft SignatureGlobal
scoreboard players operation ScoreInMillions SignatureGlobal /= 1000000 SignatureGlobal
scoreboard players operation ScoreInThousands SignatureGlobal /= 100000 SignatureGlobal
scoreboard players operation MillionsInHundreds SignatureGlobal = ScoreInMillions SignatureGlobal
scoreboard players operation MillionsInHundreds SignatureGlobal *= 10 SignatureGlobal
scoreboard players operation ScoreInThousands SignatureGlobal -= MillionsInHundreds SignatureGlobal

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a {"text":"\n----------------------------------------\n","color":"dark_aqua"}
tellraw @a [{"text":"Success! ","color":"green","bold":true},{"text":"With enough signatures the petition worked, local government revoked The Companies logging rights, halting the deforestation. Your final score is the amount of monetary damage in millions you dealt to The Company.\n","color":"white","bold":false}]
tellraw @a [{"text":"   | ","color":"gray"},{"score":{"name":"ScoreInMillions","objective":"SignatureGlobal"},"color":"aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"ScoreInThousands","objective":"SignatureGlobal"},"color":"aqua","bold":true},{"text":" Million in damages.","color":"yellow"},{"text":" | ","color":"gray"}]
tellraw @a {"text":"\n----------------------------------------","color":"dark_aqua"}
execute as @a at @s run playsound minecraft:block.note_block.bit master @s
function lt20:minigames/signature_run/stop
