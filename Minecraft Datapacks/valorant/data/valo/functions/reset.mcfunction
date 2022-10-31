#define scoreboards
scoreboard objectives remove timer
scoreboard objectives remove sneaktime
scoreboard objectives remove sneaktime
scoreboard objectives remove score
scoreboard objectives remove deathtracker
scoreboard objectives remove roundkills
scoreboard objectives remove totalkills
scoreboard objectives remove death
scoreboard objectives remove money
scoreboard objectives remove roundmoney
scoreboard objectives remove cmdTrigger 
scoreboard objectives remove agents 
scoreboard objectives remove map

scoreboard objectives add timer dummy
scoreboard objectives add sneakdistance minecraft.custom:crouch_one_cm
scoreboard objectives add sneaktime minecraft.custom:sneak_time
scoreboard objectives add score dummy
scoreboard objectives add deathtracker dummy
scoreboard objectives add roundkills playerKillCount
scoreboard objectives add totalkills playerKillCount
scoreboard objectives add death deathCount
scoreboard objectives add money dummy
scoreboard objectives add roundmoney dummy
scoreboard objectives setdisplay sidebar score
scoreboard objectives setdisplay list roundmoney
scoreboard players set phase timer -1
scoreboard objectives add cmdTrigger trigger
scoreboard objectives add agents dummy
scoreboard players set @a agents 0
scoreboard objectives add map dummy
scoreboard players set map map 1

#define teams 
team empty def
team empty atk
team add atk
team modify atk color dark_red
team modify atk friendlyFire false
team modify atk nametagVisibility hideForOtherTeams
team modify atk collisionRule never
team join atk Attackers
team add def
team modify def color blue
team modify def friendlyFire false
team modify def nametagVisibility hideForOtherTeams
team modify def collisionRule never
team join def Defenders
team add swap
team add nocol
team modify nocol collisionRule never
team modify nocol nametagVisibility never
team modify nocol seeFriendlyInvisibles false

#round timer setup
bossbar add timer {"text":"Timer","color":"aqua"}
bossbar set timer max 30
bossbar set timer players @a

#misc
function valo:_shop_setup

#agents scoreboards setup
scoreboard objectives remove motion
scoreboard objectives remove rotation
scoreboard objectives remove position
scoreboard objectives remove delay
scoreboard objectives remove disabled
scoreboard objectives remove active
scoreboard objectives add motion dummy
scoreboard objectives add rotation dummy
scoreboard objectives add position dummy
scoreboard objectives add delay dummy
scoreboard objectives add disabled dummy
scoreboard objectives add active dummy