effect clear @a[tag=sigrun_player]
tag @e remove in_area
tag @e remove sigrun_player
execute if score Value OnSigOhNo matches 1 run function lt20:minigames/signature_run/events/event_complete/log_crash_1
execute if score Value OnSigOhNo matches 2 run function lt20:minigames/signature_run/events/event_complete/log_crash_2
scoreboard players reset * ToolSlot1
scoreboard players reset * ToolSlot2
scoreboard players reset * ToolSlotSpecial
scoreboard players set Value OnSigOhNo 0
scoreboard players set Value OnSigDisaster 0
scoreboard players set GameState SignatureGlobal 0
scoreboard players set GameStage SignatureGlobal 0
scoreboard players set TotalSigs SignatureGlobal 0
scoreboard players set TotalViolations SignatureGlobal 0
scoreboard players set TotalPlayers SignatureGlobal 0
scoreboard players set ReadyPlayers SignatureGlobal 0
scoreboard players set SecsLeft SignatureGlobal 0
scoreboard players set MinutesLeft SignatureGlobal 0
scoreboard players set SecsMinusMins SignatureGlobal 0
scoreboard players set TickCount SignatureGlobal 0
scoreboard players set 60 SignatureMath 60
scoreboard players set MinutesMultiplied SignatureMath 0
scoreboard players set FirstOhNo SignatureGlobal 0
scoreboard players set MonetaryDamage SignatureGlobal 0
scoreboard players set PreviousOhNo SignatureGlobal 0
scoreboard players reset * PersonalSigs
scoreboard objectives setdisplay sidebar
#kill @e[tag=SignatureNPC]
function lt20:minigames/signature_run/forest/set_stage_0
minigame finish
#tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
schedule clear lt20:minigames/signature_run/start
schedule clear lt20:minigames/signature_run/countdown/1
schedule clear lt20:minigames/signature_run/countdown/2
schedule clear lt20:minigames/signature_run/countdown/3
