#drop prep phase barriers
execute if score map map matches 1 run execute in minecraft:ascent run setblock 0 48 0 air
execute if score map map matches 2 run execute in minecraft:bind run setblock 0 48 0 air
execute if score map map matches 3 run execute in minecraft:haven run setblock 0 48 0 air

#start round timer
title @a actionbar {"text":"Round Starting: 1:40 Round Time","color":"dark_purple"}
scoreboard players set phase timer 1
scoreboard players set time timer 0
scoreboard players set Seconds score 100
scoreboard players set @a disabled 0
give @r[team=atk,scores={deathtracker=0}] trapped_chest{display:{Name:'[{"text":"Spike","italic":false,"color":"red"}]',Lore:['[{"text":"Hold crouch while standing still on bombsite to plant"}]','[{"text":"Time required: 3.5 seconds"}]']}} 1