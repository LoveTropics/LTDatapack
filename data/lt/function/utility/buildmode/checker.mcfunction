execute if entity @s[tag=building] if entity @s[buildmode=false] run tellraw @s {"text":"lt.build.mode.inside.message","color":"green"}
execute if entity @s[tag=!building] run tellraw @s {"translate":"lt.build.mode.outside.message","color":"green"}
execute as @s[tag=building] at @s if entity @s[buildmode=true] run function lt:utility/buildmode/give_tools
