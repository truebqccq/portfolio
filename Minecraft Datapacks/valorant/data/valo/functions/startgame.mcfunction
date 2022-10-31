#check if everyone selected agents
execute if entity @a[scores={agents=0}] run title @s actionbar {"text":"Select your agent!","bold":true,"italic":true,"color":"red"}
execute if entity @a[scores={agents=0}] run tellraw @a {"text":"Not everyone has selected their agent yet!","bold":true,"italic":true,"color":"red"}

#sets up game
scoreboard objectives setdisplay sidebar score
scoreboard players set Round score 0
scoreboard players set Attackers score 0
scoreboard players set Defenders score 0
scoreboard players set @a money 800
execute unless entity @a[scores={agents=0}] run function valo:startprep
execute unless entity @a[scores={agents=0}] run function valo:_agent_start

gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule randomTickSpeed 0
gamerule naturalRegeneration false 
gamerule commandBlockOutput false