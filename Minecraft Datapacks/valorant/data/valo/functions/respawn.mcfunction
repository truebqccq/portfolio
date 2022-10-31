#clear bought items
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run clear @s crossbow
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run clear @s bow
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run clear @s tipped_arrow
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run clear @s arrow
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run item replace entity @a armor.head with glass{display:{Name:'{"text":"Default Shield"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I;1697844069,-1109769514,-1644954748,-729700313],Slot:"head"}]}
#respawns player in spectator mode, keeps track of dead players
execute at @e[type=minecraft:armor_stand,name="Respawn"] if entity @a[distance=..5,team=atk,scores={deathtracker=0}] run scoreboard players add atkdeath deathtracker 1
execute at @e[type=minecraft:armor_stand,name="Respawn"] if entity @a[distance=..5,team=def,scores={deathtracker=0}] run scoreboard players add defdeath deathtracker 1
execute at @e[type=minecraft:armor_stand,name="Respawn"] as @a[distance=..5,scores={deathtracker=0}] run give @s emerald{display:{Name:'[{"text":"Ultimate Token","italic":false,"color":"green"}]',Lore:['[{"text":"This item will be replaced with your ultimate ability"}]','[{"text":"once you have enough charges"}]']}} 1
execute at @e[type=minecraft:armor_stand,name="Respawn"] if entity @a[distance=..5,scores={deathtracker=0}] run scoreboard players set @a[distance=..5] deathtracker 1
