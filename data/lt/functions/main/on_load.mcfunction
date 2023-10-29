# Play sound to indicate server is reloaded
execute as @a[tag=main.operator] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2 1.5

# Put a message in chat to indicate server is reloaded
tellraw @a[tag=main.operator] [{"text":"<@>","color":"gray"}, {"text":" Reload: ","color":"yellow"}, {"score":{"name":"Reloads","objective":"main.stats"}, "color": "red"}]

# Initiate main module scoreboards
scoreboard objectives add main.global dummy
scoreboard objectives add main.number dummy
scoreboard objectives add main.stats dummy

# Reload Counter
scoreboard players add Reloads main.stats 1

# Define main.number scores
scoreboard players set 1 main.number 1
scoreboard players set 2 main.number 2
scoreboard players set 3 main.number 3
scoreboard players set 4 main.number 4
scoreboard players set 5 main.number 5
scoreboard players set 10 main.number 10
scoreboard players set 15 main.number 15
scoreboard players set 20 main.number 20
scoreboard players set 25 main.number 25
scoreboard players set 50 main.number 50
scoreboard players set 60 main.number 60
scoreboard players set 100 main.number 100
scoreboard players set 1000 main.number 1000

# Initiate all game load functions
function lt:game/carnival/block_party/init
function lt:game/party/color_bop/init
function lt:game/party/spleef/init

# Initiate game definitions
function lt:game/initiate_variables

# Initiate all utility load functions
function lt:utility/on_load

# handle STT entity killing
scoreboard objectives add game.stt.entity_track dummy

# Setup CCFUCC stuff
scoreboard objectives add club.disguiseCount dummy
scoreboard objectives add club.global dummy
scoreboard objectives add club.joinClock dummy
scoreboard objectives add club.invCheck dummy
scoreboard objectives add club.disguiseWearTrack dummy
scoreboard objectives add club.dialogueTime dummy

team add club.hideNames
team modify club.hideNames friendlyFire false
team modify club.hideNames nametagVisibility never

#Stuff for donation effects
scoreboard objectives add donation.effects dummy

#Player disguise cloning
scoreboard objectives add disguise.cloneing dummy

# Schedule 10 second counter
schedule clear lt:main/on_ten_seconds
schedule function lt:main/on_ten_seconds 10s

#Reset the donation effect to 0 just in case
function lt:events/donation/sky_effects/reset
#Reset the Cooldown to 0
scoreboard players set Cooldown donation.effects 0

#In World 'events'
scoreboard objectives add events.mouse_party dummy

# Collectible Mechanic Scoreboards
scoreboard objectives add collectible.rocket_boots.jump minecraft.custom:jump
scoreboard objectives add collectible.rocket_boots.time dummy