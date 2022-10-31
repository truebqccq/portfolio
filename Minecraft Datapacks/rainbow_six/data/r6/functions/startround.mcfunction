scoreboard players set phase spawn 2
scoreboard players set Seconds Wins 215
title @a actionbar {"text":"Round Starting: 3:30 round time","color":"dark_purple"}
spawnpoint @a 1012 24 -670
tp @a[scores={Characters=11..}] @e[type=wandering_trader,limit=1,name="Police"]
scoreboard players remove @a[scores={Characters=21..}] Characters 10

tellraw @a[scores={Characters=11..}] ["",{"text":"Win Condition: Eliminate all enemy or bring hostage within 10 blocks of spawn","bold":true,"italic":true,"color":"red"}]
tellraw @a[scores={Characters=..10}] ["",{"text":"Win Condition: Eliminate all enemy or run down timer","bold":true,"italic":true,"color":"blue"}]

#Count num of players on each team
execute at @a[scores={Characters=..10}] run scoreboard players add blue spawn 1
execute at @a[scores={Characters=11..}] run scoreboard players add red spawn 1

clear @a[scores={Characters=11..}]
function r6:giveatk
effect give @a instant_health 6 6
effect give @a saturation 999999 0 true
effect give @a resistance 999999 1 true