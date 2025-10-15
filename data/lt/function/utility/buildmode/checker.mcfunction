execute if entity @s[buildmode=true] run function lt:utility/buildmode/give_tools
execute if entity @s[buildmode=false] run tellraw @s {"translate":"lt.build.mode.outside.message","color":"green"}
