scoreboard players set phase spawn 1
scoreboard players set timer spawn 5100
scoreboard players set Seconds Wins 40

clear @a
#Defenders Setup
execute if score def spawn matches 1 run summon villager 1132 16 -628 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Hostage\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute if score def spawn matches 2 run summon villager 1149 16 -657 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Hostage\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute if score def spawn matches 3 run summon villager 1148 11 -660 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Hostage\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute if score def spawn matches 4 run summon villager 1149 6 -640 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Hostage\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}

execute at @e[type=villager,limit=1,name="Hostage"] run tp @a[scores={Characters=1..10}] ~ ~-1 ~
execute at @e[type=villager,limit=1,name="Hostage"] run summon pig ~ ~-1 ~ {Invulnerable:1,CustomName:"\"Hostage\""}
execute at @e[type=villager,limit=1,name="Hostage"] run summon minecraft:armor_stand ~ ~25 ~ {CustomName:"\"Hostage\"",NoGravity:1b}
effect give @e[type=pig,name="Hostage"] minecraft:slowness 999999 100 true
effect give @a[scores={Characters=1..10}] minecraft:resistance 40 2
function r6:givedef

#Attackers Setup
execute if score atk spawn matches 1 run summon minecraft:wandering_trader 1200 9 -642 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Police\""}
execute if score atk spawn matches 2 run summon minecraft:wandering_trader 1094 4 -631 {Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"Police\""}
scoreboard players add @a[scores={Characters=11..20}] Characters 10

tp @a[scores={Characters=21..30}] @e[type=wandering_trader,limit=1,name="Police"]
give @a[scores={Characters=21..30}] minecraft:ender_pearl 4
effect give @a[scores={Characters=21..30}] minecraft:invisibility 40 0 true
replaceitem entity @a[scores={Characters=21..30}] armor.feet minecraft:leather_boots{Enchantments:[{id:feather_falling,lvl:10},{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-0.75,Operation:1,UUIDLeast:177403,UUIDMost:547642}]}
spawnpoint @a[scores={Characters=21..30}] 1219 5 -622

title @a actionbar {"text":"Preparation Phase: 40 Seconds","color":"dark_purple"}
