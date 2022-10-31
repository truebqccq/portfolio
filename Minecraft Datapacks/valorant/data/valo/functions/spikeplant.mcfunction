#Spike planting sequence
title @a actionbar {"text":"Spike Planted!","color":"dark_red"}
tellraw @a {"text":"Spike Planted!","color":"dark_red"}
execute at @a run playsound minecraft:item.armor.equip_netherite master @a
execute at @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] if block ~ ~-1 ~ minecraft:polished_deepslate run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Bomb"}'}
execute as @a[nbt={SelectedItem:{id:"minecraft:trapped_chest",Count:1b}}] if block ~ ~-1 ~ minecraft:polished_deepslate run give @s emerald{display:{Name:'[{"text":"Ultimate Token","italic":false,"color":"green"}]',Lore:['[{"text":"This item will be replaced with your ultimate ability"}]','[{"text":"once you have enough charges"}]']}} 1
execute at @e[type=armor_stand,name="Bomb"] run setblock ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:10,id:"red_wool",Count:1},{Slot:11,id:"red_wool",Count:1},{Slot:12,id:"red_wool",Count:1},{Slot:13,id:"red_wool",Count:1},{Slot:14,id:"red_wool",Count:1},{Slot:15,id:"red_wool",Count:1},{Slot:16,id:"red_wool",Count:1}]}
clear @a minecraft:trapped_chest
execute at @e[type=armor_stand,name="Bomb"] run clone 0 33 0 2 37 0 ~-1 ~-6 ~
scoreboard players set bombtime timer 0
scoreboard players reset defusetime timer
scoreboard players set phase timer 2
scoreboard players add @a[team=atk] money 300
scoreboard players reset Seconds score
bossbar set timer players