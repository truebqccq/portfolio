execute if score phase spawn matches 1.. run scoreboard players remove timer spawn 1
execute if score timer spawn matches 4300 run function r6:startround

#Keeps time in seconds
execute if score phase spawn matches 1.. run scoreboard players add sec spawn 1
execute if score sec spawn matches 20 run scoreboard players remove Seconds Wins 1
execute if score sec spawn matches 20 run scoreboard players reset sec spawn

#Found Hostage Check
execute at @a[scores={Characters=11..}] if entity @e[type=villager,distance=..5,name="Hostage"] run effect give @e[type=villager,distance=..100] minecraft:glowing 999999 0 true

#Pick Up Hostage
execute at @e[type=pig,name="Hostage"] if entity @a[scores={Characters=11..20},distance=..1] run replaceitem entity @p[scores={Characters=11..20}] armor.head minecraft:blue_banner{Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.20,Operation:1,UUIDLeast:177403,UUIDMost:547642}]}
execute at @e[type=pig,name="Hostage"] if entity @a[scores={Characters=11..20},distance=..1] run title @a actionbar {"text":"A hostage has been taken.","color":"dark_purple"}
execute at @e[type=pig,name="Hostage"] if entity @a[scores={Characters=11..20},distance=..1] run kill @e[type=pig,name="Hostage"]

#Keep track of hostage location
execute at @a[nbt={Inventory:[{Slot:103b,id:"minecraft:blue_banner"}]}] run tp @e[type=minecraft:armor_stand,name="Hostage"] ~ ~25 ~

#Win Condition Check win @spawn 1:red, 2:blue
#Hostage Rescued
execute at @e[type=wandering_trader,name="Police"] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:blue_banner"}]},distance=..5] run scoreboard players set win spawn 1

#All blue dead
execute if score blue spawn = blueDeath spawn run scoreboard players set win spawn 1

#Timed out
execute if score timer spawn matches 0 run scoreboard players set win spawn 2

#All red dead
execute if score red spawn = redDeath spawn run scoreboard players set win spawn 2

#Call end function 
execute if score win spawn matches 1..2 run function r6:end