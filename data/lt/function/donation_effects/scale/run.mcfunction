execute if score Enable events.hosts matches 1 run scoreboard players add Scale events.hosts 1
execute if score Enable events.hosts matches 2 run scoreboard players remove Scale events.hosts 1
execute if score Enable events.hosts matches -1 run return fail
function lt:donation_effects/scale/set