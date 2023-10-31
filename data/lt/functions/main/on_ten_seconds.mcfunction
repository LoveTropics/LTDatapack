# Give collectibles from previously unlocked milestones to players who don't yet have them.
execute in tropicraft:tropics run function lt:events/milestone/on_ten_seconds


# Count player disguises unlocked through non-milestone means. If player has enough, get that ball rolling baybeeee
execute as @a store result score @s club.disguiseCount run collectible countdisguises
execute in tropicraft:tropics as @a[tag=!club.has_enough_disguises] at @s if score @s club.disguiseCount matches 5.. run function lt:club/get_invite_1
execute in tropicraft:tropics as @a[tag=club.needs_invite_2] at @s run function lt:club/get_invite_2

#Check for new sky effects
execute if score running donation.effects matches 0 run function lt:events/donation/sky_effects/on_ten_second

#Scale mobs
function lt:events/donation/mob_size/on_ten_second

#parties
#function lt:events/in_game/mouse_party/on_ten_seconds
function lt:events/in_game/parrot_party/on_ten_seconds

# Make particle on interdimensional acid repellent umbrella to make sure players see it
execute in tropicraft:tropics positioned 2594.50 183.50 2426.50 run particle sonic_boom 2594.50 183.50 2426.50 0 0 0 0 1 force @a[distance=..35]

# Repeat every 10 seconds
schedule function lt:main/on_ten_seconds 10s