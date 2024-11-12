execute if score disco_floor donation.effects matches 1.. run execute as @e[tag=party_room.diso_floor] at @s run function lt:donation_effects/party_room/disco_floor/random
execute if score disco_floor donation.effects matches 1.. run scoreboard players remove disco_floor donation.effects 1
schedule function lt:donation_effects/party_room/disco_floor/on_second 1s replace