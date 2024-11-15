# Resets to empty hand
execute as @s run data modify entity @s HandItems set value [{},{}]

# DinnerBeef - Debug
execute as @s if data entity @s {profile:{name:"DinnerBeef"}} run item replace entity @s weapon with ltminigames:mob_hat[ltminigames:entity={type:"tropicraft:fiddler_crab"},ltminigames:size=2]

# Direwolf20
execute as @s if data entity @s {profile:{name:"Direwolf20"}} run item replace entity @s weapon with minecraft:cake

# Cojomax99
execute as @s if data entity @s {profile:{name:"Cojomax99"}} run item replace entity @s weapon with minecraft:cookie

# Ph1LzA
execute as @s if data entity @s {profile:{name:"Ph1LzA"}} run item replace entity @s weapon with tropicraft:exploding_coconut

# Tavinnea
execute as @s if data entity @s {profile:{name:"Tavinnea"}} run item replace entity @s weapon with minecraft:cake

# HelgaRakel
execute as @s if data entity @s {profile:{name:"HelgaRakel"}} run item replace entity @s weapon with ltminigames:osa_point

# LogicPro
execute as @s if data entity @s {profile:{name:"LogicPro"}} run item replace entity @s weapon with minecraft:cake

# MandaLin
execute as @s if data entity @s {profile:{name:"MandaLin"}} run item replace entity @s weapon with ltminigames:mob_hat[ltminigames:entity={type:"minecraft:slime"},ltminigames:size=0.5]

# iskall85
execute as @s if data entity @s {profile:{name:"iskall85"}} run item replace entity @s weapon with minecraft:cake

# slicedlime
execute as @s if data entity @s {profile:{name:"slicedlime"}} run item replace entity @s weapon with ltextras:sliced_lime

# millkberry
execute as @s if data entity @s {profile:{name:"millkberry"}} run item replace entity @s weapon with minecraft:experience_bottle

# MacNcheeseP1z
execute as @s if data entity @s {profile:{name:"MacNcheeseP1z"}} run item replace entity @s weapon with minecraft:writable_book

# PearlescentMoon
execute as @s if data entity @s {profile:{name:"PearlescentMoon"}} run item replace entity @s weapon with minecraft:large_amethyst_bud

# Talon_MC
execute as @s if data entity @s {profile:{name:"Talon_MC"}} run item replace entity @s weapon with minecraft:diamond

# Pixlriffs
execute as @s if data entity @s {profile:{name:"Pixlriffs"}} run item replace entity @s weapon with minecraft:redstone_torch

# joehillssays
execute as @s if data entity @s {profile:{name:"joehillssays"}} run item replace entity @s weapon with tropicraft:large_bongo_drum

# Rushmead
execute as @s if data entity @s {profile:{name:"Rushmead"}} run item replace entity @s weapon with minecraft:player_head{SkullOwner:{Id:[I;-1425014579,-1424734237,-1938822881,-2030827905],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA2NjIyMmI0M2M0NTE5OGY5ZWNkNzdiYzE0MTI3MmIzOWEyNjlkNjhlNzQ3MTIwODEwNDRkNWY5MzExOTkyMiJ9fX0="}]}}}}

# RichardThornton
execute as @s if data entity @s {profile:{name:"RichardThornton"}} run item replace entity @s weapon with minecraft:medium_amethyst_bud

# 8bitelliott
execute as @s if data entity @s {profile:{name:"8bitelliott"}} run item replace entity @s weapon with minecraft:small_amethyst_bud

# Snifferish
execute as @s if data entity @s {profile:{name:"Snifferish"}} run item replace entity @s weapon with minecraft:torchflower

# BadgerSpanner
execute as @s if data entity @s {profile:{name:"BadgerSpanner"}} run item replace entity @s weapon with minecraft:cake

# Syszee
execute as @s if data entity @s {profile:{name:"Syszee"}} run item replace entity @s weapon with minecraft:structure_block

# Knarfy
execute as @s if data entity @s {profile:{name:"Knarfy"}} run item replace entity @s weapon with minecraft:command_block

# Bobicraft
execute as @s if data entity @s {profile:{name:"Bobicraft"}} run item replace entity @s weapon with tropicraft:music_disc_summering

# NotActuallyTerry
execute as @s if data entity @s {profile:{name:"NotActuallyTerry"}} run item replace entity @s weapon with minecraft:cake

# Anonymous
execute as @s if data entity @s {profile:{name:""}} run disguise as tropicraft:tapir {undercover:true}

execute if entity @s[type=player] run tellraw @p {"text":"Execute","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=hostDummy] run function lt:utility/hosts/easter_eggs"}}
