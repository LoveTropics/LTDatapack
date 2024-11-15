# Resets to empty hand
execute as @s run data modify entity @s HandItems set value [{},{}]
#DinnerBeef - Debug
execute as @s if data entity @s {profile:{name:"DinnerBeef"}} run item replace entity @s armor.head with ltminigames:mob_hat[ltminigames:entity={type:"tropicraft:fiddler_crab"},ltminigames:size=2]
#Direwolf20
execute as @s if data entity @s {profile:{name:"Direwolf20"}} run data modify entity @s HandItems set value [{id:"create:wrench",Count:1b},{}]
#Cojomax99
execute as @s if data entity @s {profile:{name:"Cojomax99"}} run item replace entity @s wepon with minecraft:cookie
#Ph1LzA
execute as @s if data entity @s {profile:{name:"Ph1LzA"}} run data modify entity @s HandItems set value [{id:"tropicraft:exploding_coconut",Count:1b},{}]
#Tavinnea
execute as @s if data entity @s {profile:{name:"Tavinnea"}} run data modify entity @s HandItems set value [{id:"create:builders_tea",Count:1b},{}]
#HelgaRakel
execute as @s if data entity @s {profile:{name:"HelgaRakel"}} run data modify entity @s HandItems set value [{id:"ltminigames:osa_point",Count:1b},{}]
#LogicPro
execute as @s if data entity @s {profile:{name:"LogicPro"}} run data modify entity @s HandItems set value [{id:"create:brass_hand",Count:1b},{}]
#MandaLin
execute as @s if data entity @s {profile:{name:"MandaLin"}} run item replace entity @s armor.head with ltminigames:mob_hat[ltminigames:entity={type:"minecraft:slime"},ltminigames:size=0.5]
#iskall85
execute as @s if data entity @s {profile:{name:"iskall85"}} run data modify entity @s HandItems set value [{id:"create:goggles",Count:1b},{}]
#slicedlime
execute as @s if data entity @s {profile:{name:"slicedlime"}} run data modify entity @s HandItems set value [{id:"ltextras:sliced_lime",Count:1b},{}]
#millkberry
execute as @s if data entity @s {profile:{name:"millkberry"}} run data modify entity @s HandItems set value [{id:"minecraft:experience_bottle",Count:1b},{}]
#MacNcheeseP1z
execute as @s if data entity @s {profile:{name:"MacNcheeseP1z"}} run data modify entity @s HandItems set value [{id:"minecraft:writable_book",Count:1b},{}]
#PearlescentMoon
execute as @s if data entity @s {profile:{name:"PearlescentMoon"}} run data modify entity @s HandItems set value [{id:"minecraft:large_amethyst_bud",Count:1b},{}]
#Talon_MC
execute as @s if data entity @s {profile:{name:"Talon_MC"}} run data modify entity @s HandItems set value [{id:"minecraft:diamond",Count:1b},{}]
#Pixlriffs
execute as @s if data entity @s {profile:{name:"Pixlriffs"}} run data modify entity @s HandItems set value [{id:"minecraft:redstone_torch",Count:1b},{}]
#joehillssays
execute as @s if data entity @s {profile:{name:"joehillssays"}} run data modify entity @s HandItems set value [{id:"tropicraft:large_bongo_drum",Count:1b},{}]
#Rushmead
execute as @s if data entity @s {profile:{name:"Rushmead"}} run data modify entity @s HandItems set value [{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1425014579,-1424734237,-1938822881,-2030827905],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA2NjIyMmI0M2M0NTE5OGY5ZWNkNzdiYzE0MTI3MmIzOWEyNjlkNjhlNzQ3MTIwODEwNDRkNWY5MzExOTkyMiJ9fX0="}]}}}}]
#RichardThornton
execute as @s if data entity @s {profile:{name:"RichardThornton"}} run data modify entity @s HandItems set value [{id:"minecraft:medium_amethyst_bud",Count:1b},{}]
#8bitelliott
execute as @s if data entity @s {profile:{name:"8bitelliott"}} run data modify entity @s HandItems set value [{id:"minecraft:small_amethyst_bud",Count:1b},{}]
#Snifferish
execute as @s if data entity @s {profile:{name:"Snifferish"}} run data modify entity @s HandItems set value [{id:"minecraft:torchflower",Count:1b},{}]
#BadgerSpanner
execute as @s if data entity @s {profile:{name:"BadgerSpanner"}} run data modify entity @s HandItems set value [{id:"create:bar_of_chocolate",Count:1b},{}]
#Syszee
execute as @s if data entity @s {profile:{name:"Syszee"}} run data modify entity @s HandItems set value [{id:"minecraft:structure_block",Count:1b},{}]
#Knarfy
execute as @s if data entity @s {profile:{name:"Knarfy"}} run data modify entity @s HandItems set value [{id:"minecraft:command_block",Count:1b},{}]
#Bobicraft
execute as @s if data entity @s {profile:{name:"Bobicraft"}} run data modify entity @s HandItems set value [{id:"tropicraft:music_disc_summering",Count:1b},{}]
#NotActuallyTerry
execute as @s if data entity @s {profile:{name:"NotActuallyTerry"}} run data modify entity @s HandItems set value [{id:"create:creative_motor",Count:1b},{}]
#anonymous
execute as @s if data entity @s {ProfileID: [I;0,0,0,0]} run disguise as tropicraft:tapir {undercover:true}
execute as @s[tag=!leadboardSpeical] unless data entity @s {ProfileID: [I;0,0,0,0]} unless data entity @s {CustomName:'{"text":"CreeperHost"}'} run disguise clear
#execute as @s[tag=!leadboardSpeical] if entity @s {CustomName:'{"text":"CreeperHost"}'} run disguise as tropicraft:tropicreeper
## ADD CreeperHost To This List
execute if entity @s[type=player] run tellraw @p {"text":"Execute","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=hostDummy] run function lt:utility/hosts/easter_eggs"}}