#tp players to spawn
execute if score map map matches 1 run execute in minecraft:ascent run tp @a[team=atk,distance=0..] @e[type=vindicator,distance=0..,name="atkspawn",limit=1]
execute if score map map matches 2 run execute in minecraft:bind run tp @a[team=atk,distance=0..] @e[type=vindicator,distance=0..,name="atkspawn",limit=1]
execute if score map map matches 3 run execute in minecraft:haven run tp @a[team=atk,distance=0..] @e[type=vindicator,distance=0..,name="atkspawn",limit=1]
execute if score map map matches 1 run execute in minecraft:ascent run tp @a[team=def,distance=0..] @e[type=villager,distance=0..,name="defspawn",limit=1]
execute if score map map matches 2 run execute in minecraft:bind run tp @a[team=def,distance=0..] @e[type=villager,distance=0..,name="defspawn",limit=1]
execute if score map map matches 3 run execute in minecraft:haven run tp @a[team=def,distance=0..] @e[type=villager,distance=0..,name="defspawn",limit=1]
function valo:_shop_players

#prep phase setup
scoreboard players add Round score 1
execute as @a run scoreboard players operation @s roundmoney = @s money
gamemode survival @a
effect give @a instant_health 1 2
effect give @a saturation 100000 0 true
clear @a trapped_chest
title @a actionbar {"text":"30 Buy Period Starting","color":"dark_purple"}
scoreboard players set phase timer 0
scoreboard players set time timer 0
scoreboard players set Seconds score 30
scoreboard players set @a death 0
scoreboard players set @a deathtracker 0
scoreboard players set atkdeath deathtracker 0
scoreboard players set defdeath deathtracker 0
scoreboard players set atkplayers deathtracker 0
scoreboard players set defplayers deathtracker 0
execute at @a[team=atk] run scoreboard players add atkplayers deathtracker 1
execute at @a[team=def] run scoreboard players add defplayers deathtracker 1
scoreboard players set @a disabled 1
bossbar set timer players @a

#prep phase barriers
execute if score map map matches 1 run execute in minecraft:ascent run setblock 0 48 0 redstone_block
execute if score map map matches 2 run execute in minecraft:bind run setblock 0 48 0 redstone_block
execute if score map map matches 3 run execute in miencraft:haven run setblock 0 48 0 redstone_block
execute if score map map matches 1 run execute in minecraft:ascent run spawnpoint @a 1 37 2
execute if score map map matches 2 run execute in minecraft:bind run spawnpoint @a 1 37 2
execute if score map map matches 3 run execute in minecraft:haven run spawnpoint @a 1 37 2
execute unless score map map matches 1.. run spawnpoint @a 1 37 2
execute unless score map map matches 1.. run setblock 0 48 0 redstone_block