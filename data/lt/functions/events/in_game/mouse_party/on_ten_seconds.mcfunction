execute if score Cooldown events.mouse_party matches 1.. run return 1
scoreboard players set Players events.mouse_party 0
execute as @e[type=marker,tag=events.in_game.mouse_party.tracker] store result score Players donation.effects run execute as @a[distance=..20,nbt={ForgeCaps:{"ltminigames:player_disguise":{entity:{type:"tropicraft:slender_harvest_mouse"}}}}] run scoreboard players add Players events.mouse_party 1
execute if score Players donation.effects >= Required events.mouse_party run function lt:events/in_game/mouse_party/start_party