#Full Reset
team empty A
team empty B

scoreboard objectives remove delay
scoreboard objectives remove Characters
scoreboard objectives remove Wins
scoreboard objectives remove Tachanka
scoreboard objectives remove Motion
scoreboard objectives remove Sneak
scoreboard objectives remove spawn

#Creating new objectives
tellraw @a "Datapack Loaded"
scoreboard objectives add delay dummy
scoreboard objectives add Characters dummy 
scoreboard objectives add Wins dummy
scoreboard objectives add Tachanka dummy
scoreboard objectives add Motion dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add spawn dummy

#General Cleanup
fill 1009 4 -653 1000 4 -653 minecraft:oak_button[facing=south] replace
fill 989 4 -653 998 4 -653 minecraft:stone_button[facing=south] replace
kill @e[type=!player]
clone 1000 3 -550 1027 20 -508 1130 3 -665
gamemode adventure @a
clear @a
effect clear @a


scoreboard players set @a Characters 0
scoreboard players set atk spawn 1
scoreboard players set def spawn 1
scoreboard players set round spawn 1
team add A
team modify A color gold
team modify A friendlyFire false
team modify A nametagVisibility hideForOtherTeams
team modify A collisionRule never
team join A Orange
team add B
team modify B color dark_purple
team modify B friendlyFire false
team modify B nametagVisibility hideForOtherTeams
team modify B collisionRule never
team join B Purple
team add nocol
team modify nocol collisionRule never
team modify nocol nametagVisibility never
team modify nocol seeFriendlyInvisibles false

scoreboard objectives setdisplay sidebar Wins
tp @a 999 4 -612
gamemode adventure @a

#Tachanka=7, Ying=18, Valkyrie=8
