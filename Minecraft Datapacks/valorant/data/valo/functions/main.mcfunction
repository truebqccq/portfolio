#pickup spike
execute at @e[type=armor_stand,name="DroppedSpike"] as @a[team=atk,scores={deathtracker=0,death=0},distance=..3] run give @r[team=atk,scores={deathtracker=0}] trapped_chest{display:{Name:'[{"text":"Spike","italic":false,"color":"red"}]',Lore:['[{"text":"Hold crouch while standing still on bombsite to plant"}]','[{"text":"Time required: 3.5 seconds"}]']}} 1
execute if entity @a[scores={death=0},nbt={Inventory:[{id:"minecraft:trapped_chest"}]}] run kill @e[type=armor_stand,name="DroppedSpike"]

#spike plant sequence
execute as @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] at @s unless score @s sneakdistance matches ..6 run scoreboard players set @s sneakdistance 0
execute as @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] at @s unless score @s sneakdistance < @s sneaktime run scoreboard players set @s sneakdistance 0
execute as @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] at @s unless score @s sneakdistance matches ..5 run scoreboard players reset @s sneaktime
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] run scoreboard players reset @s sneaktime
execute as @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] at @s unless block ~ ~-1 ~ minecraft:polished_deepslate run scoreboard players reset @s sneaktime
execute unless score phase timer matches 3 as @a[limit=1,nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] run execute at @s if block ~ ~-1 ~ minecraft:polished_deepslate if score @s sneaktime matches 70 run function valo:spikeplant

#spike tick sequence
execute if score phase timer matches 2 run scoreboard players add bombtime timer 1
execute if score phase timer matches 2 if score bombtime timer matches 20.. run scoreboard players add bombsecond timer 1
execute if score phase timer matches 2 if score bombtime timer matches 20.. run scoreboard players set bombtime timer 0
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run execute at @e[type=armor_stand,name="Bomb"] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1 0.2
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run execute at @e[type=armor_stand,name="Bomb"] run effect give @a[distance=..30] minecraft:instant_damage 1 20 true
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run execute at @e[type=armor_stand,name="Bomb"] run setblock ~ ~ ~ air replace
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run execute at @e[type=armor_stand,name="Bomb"] run fill ~-1 ~-6 ~ ~1 ~-2 ~ air
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run kill @e[type=armor_stand,name="Bomb"]
execute if score phase timer matches 2 if score bombsecond timer matches 45.. run scoreboard players set win timer 1

#bomb sounds
execute if score bombsecond timer matches ..24 run execute at @e[type=armor_stand,name="Bomb"] if score bombtime timer matches 0 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 0.3 1 0.1
execute if score bombsecond timer matches 25.. run execute if score bombtime timer matches 0 run execute at @e[type=armor_stand,name="Bomb"] run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 0.25 1.5 0.05
execute if score bombsecond timer matches 25.. run execute if score bombtime timer matches 10 run execute at @e[type=armor_stand,name="Bomb"] run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 0.25 1.5 0.05

#defuse progress
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 20 run item replace block ~ ~ ~ container.10 with lime_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 40 run item replace block ~ ~ ~ container.11 with lime_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 60 run item replace block ~ ~ ~ container.12 with lime_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 80 run item replace block ~ ~ ~ container.13 with blue_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 100 run item replace block ~ ~ ~ container.14 with lime_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 120 run item replace block ~ ~ ~ container.15 with lime_wool
execute at @e[type=armor_stand,name="Bomb"] if score defusetime timer matches 140 run item replace block ~ ~ ~ container.16 with lime_wool

#spike defused
execute if score defusetime timer matches 149 run title @a actionbar {"text":"Spike Defused!","color":"green"}
execute if score defusetime timer matches 149 run execute at @e[type=armor_stand,name="Bomb"] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1 0.2
execute if score defusetime timer matches 149 run give @r[nbt={SelectedItem:{id:"minecraft:tripwire_hook",Count:1b}},distance=..2.5] emerald{display:{Name:'[{"text":"Ultimate Token","italic":false,"color":"green"}]',Lore:['[{"text":"This item will be replaced with your ultimate ability"}]','[{"text":"once you have enough charges"}]']}} 1
execute if score defusetime timer matches 149 run execute at @e[type=armor_stand,name="Bomb"] run setblock ~ ~ ~ air replace
execute if score defusetime timer matches 149 run execute at @e[type=armor_stand,name="Bomb"] run fill ~-1 ~-6 ~ ~1 ~-2 ~ air
execute if score defusetime timer matches 149 run kill @e[type=armor_stand,name="Bomb"]
execute if score defusetime timer matches 149 run scoreboard players set win timer 3