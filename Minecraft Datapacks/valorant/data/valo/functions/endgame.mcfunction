#Title winner of game
execute if score Attackers score matches 13 run title @a title {"text":"Attackers Win!","color":"dark_red"}
execute if score Defenders score matches 13 run title @a title {"text":"Defenders Win!","color":"blue"}

#display total kills
execute as @a run tellraw @a ["",{"selector":"@s"}," got a total of ",{"score":{"name":"@s","objective":"totalkills"}}," kills!"]

#reset scores
scoreboard players reset @a totalkills
scoreboard players set @a agents -1

#tp players back to lobby
#/summon vindicator ~ ~ ~ {PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"atkspawn\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
#/summon villager ~ ~ ~ {PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,CustomName:"\"defspawn\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
#/summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Respawn"}'}
execute if score map map matches 1 run execute in minecraft:ascent run tp @a 2 83 150
execute if score map map matches 2 run execute in minecraft:bind run tp @a 1 113 161
execute if score map map matches 3 run execute in minecraft:haven run tp @a 167 141 29
