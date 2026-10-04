# Play sound to indicate server is reloaded
execute as @a[role=commander] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 2 1.5

# Put a message in chat to indicate server is reloaded
tellraw @a[role=commander] [{"text":"<@>","color":"gray"}, {"text":" Reload: ","color":"yellow"}, {"score":{"name":"reloads","objective":"main.stats"}, "color": "red"}]

# Util Scoreboard
scoreboard objectives add main.random dummy "Random Numbers"

# Stat Scoreboards
scoreboard objectives add main.stats dummy "Server Stats"
scoreboard objectives add player.deathCount deathCount "Death Count"
scoreboard objectives add player.chair_sit_time dummy "Chair Sit Time"
scoreboard objectives add player.jump minecraft.custom:minecraft.jump "Jump Count"
scoreboard objectives add player.play_time minecraft.custom:minecraft.play_time "Play Time"
scoreboard objectives add player.fly_one_cm minecraft.custom:minecraft.fly_one_cm "Fly One Centimeter"
scoreboard objectives add player.walk_one_cm minecraft.custom:minecraft.walk_one_cm "Walk One Centimeter"

# Reload Counter
scoreboard players add reloads main.stats 1

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

scoreboard objectives add stats.disguise dummy
#Reset player cloning cooldown
function lt:diguises/clone/stages/stage_reset

# Collectible Mechanic Scoreboards
scoreboard objectives add collectible.rocket_boots.jump minecraft.custom:jump
scoreboard objectives add collectible.rocket_boots.time dummy

# Crab Golf
team add anticrabcollision
team modify anticrabcollision collisionRule never

# Party Room
scoreboard objectives add party_room.items dummy
function lt:donation_effects/party_room/disco_floor/on_second

# Scavenger Hunt
scoreboard objectives add world_game.scavenger_hunt.stats dummy

# On Second
schedule function lt:main/on_second 1s replace

#Elytra
scoreboard objectives add world_game.elytra.tracker dummy
scoreboard objectives add world_game.elytra.clock dummy
scoreboard objectives add world_game.elytra.scores dummy


## Quest System General Variables

# What line should be sent by the dialogue system
scoreboard objectives add quest.dia.target_line dummy
# How long until the next dialogue line/stage should be processed
scoreboard objectives add quest.dia.line_time dummy
# What state the dialogue ended with
scoreboard objectives add quest.dia.end_state dummy
# Generic var for comparing quest stages
scoreboard objectives add quest.main.stage_eval dummy
# Generic var for comparing misc things within quests (E.g. checking whether player is in dialogue)
scoreboard objectives add quest.main.misc_eval dummy

## Setup quest specific variables

# cents_intro start time_delay
scoreboard objectives add quest.cents_intro_delay dummy
# no_cents_intro start time_delay
scoreboard objectives add quest.no_cents_intro_delay dummy

## Setup teams for quests (NPC only)
team add quest.npc.no_collide
team modify quest.npc.no_collide collisionRule never
team modify quest.npc.no_collide friendlyFire false


# Mini Disguises
scoreboard objectives add mini_disguises.clock dummy
## Stage system variables
scoreboard objectives add stage.global dummy
scoreboard objectives add stage.curtain dummy

#Stage
function lt:stage/on_tick_10

# Forklifts
function lt:forklift/on_load
