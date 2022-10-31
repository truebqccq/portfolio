scoreboard objectives add Death deathCount
scoreboard objectives setdisplay sidebar Death
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives remove kit
gamerule doDaylightCycle false
gamerule doMobSpawning false
weather clear 100000
gamerule doWeatherCycle false
tellraw @a ["",{"text":"Lucky Block by truebqccq","color":"green"}]