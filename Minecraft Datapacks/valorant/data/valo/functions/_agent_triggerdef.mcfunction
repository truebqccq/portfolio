#trigger command
scoreboard players enable @a cmdTrigger

#agent select
execute as @a[scores={cmdTrigger=1..16}] run function valo:_agent_select

#agent abilities
#astra

#breach

#brimstone

#cypher

#jett
execute as @a[scores={agents=5}] at @s if block ~ ~-1 ~ air if score @s sneaktime matches 1.. run effect give @s minecraft:slow_falling 3 0 true
execute as @a[scores={agents=5},nbt={ActiveEffects:[{Id:28b, Amplifier: 0b}]}] at @s if block ~ ~-1 ~ air run scoreboard players reset @s sneaktime

execute as @a[scores={agents=5,disabled=0},team=def,nbt={SelectedItem:{id:"minecraft:magenta_glazed_terracotta"}}] at @s run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Invisible:1b,CustomName:'{"text":"dashdef"}'}
execute as @a[scores={agents=5,disabled=0},team=def,nbt={SelectedItem:{id:"minecraft:magenta_glazed_terracotta"}}] at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 0.5
execute as @a[scores={agents=5,disabled=0},team=def,nbt={SelectedItem:{id:"minecraft:magenta_glazed_terracotta"}}] run clear @s minecraft:magenta_glazed_terracotta
execute as @e[type=armor_stand,name="dashdef"] run scoreboard players add @e[type=armor_stand,name="dashdef"] delay 1
execute as @e[type=armor_stand,name="dashdef",scores={delay=1}] store result score jettdefh rotation run data get entity @a[scores={agents=5},team=def,limit=1] Rotation[0] 1000000
execute as @e[type=armor_stand,name="dashdef",scores={delay=1}] store result score jettdefv rotation run data get entity @a[scores={agents=5},team=def,limit=1] Rotation[1] 1000000
execute store result entity @e[type=armor_stand,name="dashdef",scores={delay=..6},limit=1] Rotation[0] float 0.000001 run scoreboard players get jettdefh rotation
execute store result entity @e[type=armor_stand,name="dashdef",scores={delay=..6},limit=1] Rotation[1] float 0.000001 run scoreboard players get jettdefv rotation
execute as @e[type=armor_stand,name="dashdef",scores={delay=1}] store result score jettdefx1 position run data get entity @a[scores={agents=5},team=def,limit=1] Pos[0] 1000000
execute as @e[type=armor_stand,name="dashdef",scores={delay=1}] store result score jettdefz1 position run data get entity @a[scores={agents=5},team=def,limit=1] Pos[2] 1000000
execute as @e[type=armor_stand,name="dashdef",scores={delay=2}] store result score jettdefx2 position run data get entity @a[scores={agents=5},team=def,limit=1] Pos[0] 1000000
execute as @e[type=armor_stand,name="dashdef",scores={delay=2}] store result score jettdefz2 position run data get entity @a[scores={agents=5},team=def,limit=1] Pos[2] 1000000
execute store result entity @e[type=armor_stand,name="dashdef",limit=1,scores={delay=3}] Motion[0] double 0.00002 run scoreboard players operation jettdefx2 position -= jettdefx1 position
execute store result entity @e[type=armor_stand,name="dashdef",limit=1,scores={delay=3}] Motion[2] double 0.00002 run scoreboard players operation jettdefz2 position -= jettdefz1 position
execute at @e[type=armor_stand,name="dashdef",scores={delay=3..4}] run tp @a[scores={agents=5},team=def] @e[type=armor_stand,name="dashdef",limit=1,sort=nearest]
kill @e[type=armor_stand,name="dashdef",scores={delay=4}]

execute as @a[scores={agents=5,disabled=0},team=def,nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] unless score 205def active matches 1.. run scoreboard players set 205def active 1
execute if score 205def active matches 1 run effect give @a[scores={agents=5}] levitation 1 20
execute if score 205def active matches 1 run clear @a[scores={agents=5}] rabbit_foot 1
execute if score 205def active matches 1 run execute as @a[scores={agents=5}] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 0.5
execute if score 205def active matches 1 run scoreboard players set 205def active 2
execute if score 205def active matches 2 run scoreboard players add 205def delay 1
execute if score 205def delay matches 5 run effect clear @a[scores={agents=5}] levitation
execute if score 205def delay matches 20 run scoreboard players reset 205def active
execute if score 205def delay matches 20 run scoreboard players reset 205def delay

#kayo

#killjoy

#omen

#phoenix

#raze

#reyna

#sage

#skye

#sova

#viper

#yoru