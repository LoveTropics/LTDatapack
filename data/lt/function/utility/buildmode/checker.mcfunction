execute if entity @s[buildmode=enabled] run function lt:utility/buildmode/give_tools
execute if entity @s[buildmode=disabled] run tellraw @s {"translate":"lt.build.mode.outside.message","color":"green"}
