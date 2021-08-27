# Runs event tick active events
function lt20:minigames/signature_run/events/run_active_event
function lt20:minigames/signature_run/disasters/run_active_disaster

# Hotbar Menu Commands
execute as @a[tag=sigrun_player] at @s if score GameState SignatureGlobal matches 2 run function lt20:minigames/signature_run/hotbar_menu/set_hotbar_menu
execute as @a[tag=sigrun_player,nbt={Inventory:[{Slot:-106b,tag:{MenuItem:1b}}]}] at @s if score GameState SignatureGlobal matches 2 run function lt20:minigames/signature_run/hotbar_menu/menu_used

# Actionbar info commands
execute as @a[tag=sigrun_player] at @s if score GameState SignatureGlobal matches 2 run function lt20:minigames/signature_run/player/display_actionbar_info

# Activates Collect Signature menu option when in range of sig npc with a sig
tag @a[tag=sigrun_player] remove collectSig_available
execute as @a[tag=sigrun_player,scores={PlayerSigs=..4}] at @s if entity @e[tag=SigRunNPC,tag=SignatureNPC,sort=nearest,limit=1,distance=..2,scores={NPCSigs=1}] run tag @s add collectSig_available

# Activates General Interact menu option when in range of sig npc with a sig
tag @a[tag=sigrun_player] remove generalInteract_available
execute as @a[tag=sigrun_player] at @s if entity @e[tag=SigRunNPC,tag=HasInteract,sort=nearest,limit=1,distance=..2] run tag @s add generalInteract_available

# Actives the teleport to OhNo! event when an OhNo is active
tag @a[tag=sigrun_player] remove teleportOhNo_available
execute as @a[tag=sigrun_player] at @s if score Value OnSigOhNo matches 1.. if entity @e[tag=SigRunEventTeleportPoint] run tag @s add teleportOhNo_available

# Actives the teleport to OhNo! event when an OhNo is active
tag @a[tag=sigrun_player] remove teleportDisaster_available
execute as @a[tag=sigrun_player] at @s if score Value OnSigDisaster matches 1.. if entity @e[tag=SigRunDisasterTeleportPoint] run tag @s add teleportDisaster_available


# Runs the on_second function
execute if score GameState SignatureGlobal matches 2 run scoreboard players add TickCount SignatureGlobal 1
execute if score TickCount SignatureGlobal matches 20.. run function lt20:minigames/signature_run/on_second

#
execute as @e[type=item,tag=code_violation_pickup] at @s run function lt20:minigames/signature_run/effects/item_particle

#
execute as @a[tag=sigrun_player] at @s if entity @e[tag=code_violation_pickup,distance=..1] run function lt20:minigames/signature_run/violations/collect_violation

# Updates Violations and Signatures for scoreboard
team modify srViolations suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"score":{"name":"TotalViolations","objective":"SignatureGlobal"},"color":"aqua","bold":true}]
team modify srSigsReturned suffix [{"translate":"\uE001"},{"translate":"\uE001"},{"score":{"name":"TotalSigs","objective":"SignatureGlobal"},"color":"aqua","bold":true},{"text":"/","color":"gray","bold":false},{"text":"75","color":"aqua","bold":false}]

# Joins workers to NoCollision teams
team join SigRunCollision @e[tag=Worker]


#
execute as @a[tag=sigrun_player] at @s if score GameState SignatureGlobal matches 1 run tp @s @e[tag=SigRunStartViewMarker,limit=1,sort=nearest]
execute if score GameState SignatureGlobal matches 1 run title @a[tag=sigrun_player] actionbar [{"text":"Drop your tutorial book to ready up.","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Players Ready: ","color":"aqua"},{"score":{"name":"ReadyPlayers","objective":"SignatureGlobal"},"color":"white"},{"text":"/","color":"yellow"},{"score":{"name":"TotalPlayers","objective":"SignatureGlobal"},"color":"white"}]
execute as @a[tag=sigrun_player,tag=!ready] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Count:1b}]}] run function lt20:minigames/signature_run/player/player_ready
execute if score ReadyPlayers SignatureGlobal matches 1.. if score ReadyPlayers SignatureGlobal = TotalPlayers SignatureGlobal run function lt20:minigames/signature_run/countdown/3
