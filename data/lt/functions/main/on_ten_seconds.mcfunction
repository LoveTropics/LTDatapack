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

# Repeat every 10 seconds
schedule function lt:main/on_ten_seconds 10s