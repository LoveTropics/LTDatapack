# Give collectibles from previously unlocked milestones to players who don't yet have them.
execute in tropicraft:tropics run function lt:milestones/on_ten_seconds


# Count player disguises unlocked through non-milestone means. If player has enough, get that ball rolling baybeeee
execute as @a store result score @s club.disguiseCount run collectible countdisguises
execute in tropicraft:tropics as @a[tag=!club.has_enough_disguises] at @s if score @s club.disguiseCount matches 5.. run function lt:club/get_invite_1
execute in tropicraft:tropics as @a[tag=club.needs_invite_2] at @s run function lt:club/get_invite_2

# Repeat every 10 seconds
schedule function lt:main/on_ten_seconds 10s