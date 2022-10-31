scoreboard players add win spawn 2
#Odd rounds
execute if score round spawn matches 1 if score win spawn matches 3 run scoreboard players add Orange Wins 1
execute if score round spawn matches 1 if score win spawn matches 4 run scoreboard players add Purple Wins 1

#Even rounds
execute if score round spawn matches 2 if score win spawn matches 4 run scoreboard players add Orange Wins 1
execute if score round spawn matches 2 if score win spawn matches 3 run scoreboard players add Purple Wins 1

#Swap
execute if score round spawn matches 2 run scoreboard players set round spawn 3
execute if score round spawn matches 1 run scoreboard players set round spawn 2
execute if score round spawn matches 3 run scoreboard players set round spawn 1

#Switch Teams
clear @a
tp @a[scores={Characters=..10}] 1003 4 -623
tp @a[scores={Characters=11..}] 995 4 -623

#General Cleanup
fill 1009 4 -653 1000 4 -653 minecraft:oak_button[facing=south] replace
fill 989 4 -653 998 4 -653 minecraft:stone_button[facing=south] replace
kill @e[type=!player]
clone 1000 3 -550 1027 20 -508 1130 3 -665
gamemode adventure @a 
effect give @a saturation 999999 0 true
effect give @a minecraft:instant_health 6 6
scoreboard players reset Seconds Wins

#Reset Scoreboards
scoreboard players reset @a Characters
scoreboard players reset @a Sneak
scoreboard players reset @a Tachanka
scoreboard players reset redDeath spawn
scoreboard players reset blueDeath spawn
scoreboard players reset red spawn
scoreboard players reset blue spawn
scoreboard players set win spawn 0
scoreboard players set phase spawn 0