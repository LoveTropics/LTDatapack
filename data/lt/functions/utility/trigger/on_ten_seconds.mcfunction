scoreboard players enable @e[role=builder] stats_controller
scoreboard players enable @e[role=moderator] stats_controller
execute as @a[role=builder] run function lt:utility/trigger/check
execute as @a[role=moderator] run function lt:utility/trigger/check

