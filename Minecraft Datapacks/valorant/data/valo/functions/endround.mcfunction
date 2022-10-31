#give money 1=bomb explode, 2=all defenders dead, 3=all attackers dead/bomb defused, 4=time ran out
execute if score win timer matches 1 run scoreboard players add @a[team=atk] money 3000
execute if score win timer matches 1 run scoreboard players add @a[team=def,scores={deathtracker=1}] money 1900
execute if score win timer matches 1 run scoreboard players add @a[team=def,scores={deathtracker=0}] money 1000

execute if score win timer matches 2 run scoreboard players add @a[team=atk] money 3000
execute if score win timer matches 2 run scoreboard players add @a[team=def] money 1900

execute if score win timer matches 3 run scoreboard players add @a[team=atk] money 1900
execute if score win timer matches 3 run scoreboard players add @a[team=def] money 3000

execute if score win timer matches 4 run scoreboard players add @a[team=atk,scores={deathtracker=1}] money 1900
execute if score win timer matches 4 run scoreboard players add @a[team=atk,scores={deathtracker=0}] money 1000
execute if score win timer matches 4 run scoreboard players add @a[team=def] money 3000

#loss bonus added
execute if score win timer matches 1 run scoreboard players operation @a[team=def,scores={deathtracker=1}] money += atklossbonus timer
execute if score win timer matches 2 run scoreboard players operation @a[team=def] money += atklossbonus timer
execute if score win timer matches 3 run scoreboard players operation @a[team=atk] money += deflossbonus timer
execute if score win timer matches 4 run scoreboard players operation @a[team=atk,scores={deathtracker=1}] money += deflossbonus timer

#change score
execute if score win timer matches 1..2 run scoreboard players add Attackers score 1
execute if score win timer matches 1..2 run scoreboard players add deflossbonus timer 500
execute if score win timer matches 1..2 run scoreboard players reset atklossbonus timer

execute if score win timer matches 3..4 run scoreboard players add Defenders score 1
execute if score win timer matches 3..4 run scoreboard players add atklossbonus timer 500
execute if score win timer matches 3..4 run scoreboard players reset deflossbonus timer

execute if score Attackers score matches 13 run function valo:endgame
execute if score Defenders score matches 13 run function valo:endgame

#Round End Messages
execute if score win timer matches 1 run title @a actionbar {"text":"Spike Detonated!","color":"dark_red"}
execute if score win timer matches 1 run tellraw @a {"text":"Spike Detonated!","color":"dark_red"}
execute if score win timer matches 2 run title @a actionbar {"text":"All Defenders Eliminated!","color":"dark_red"}
execute if score win timer matches 2 run tellraw @a {"text":"All Defenders Eliminated!","color":"dark_red"}
execute if score win timer matches 3 if score phase timer matches 1 run title @a actionbar {"text":"All Attackers Eliminated!","color":"blue"}
execute if score win timer matches 3 if score phase timer matches 1 run tellraw @a {"text":"All Attackers Eliminated!","color":"blue"}
execute if score win timer matches 3 if score phase timer matches 2 run title @a actionbar {"text":"Spike Defused!","color":"blue"}
execute if score win timer matches 3 if score phase timer matches 2 run tellraw @a {"text":"Spike Defused!","color":"blue"}
execute if score win timer matches 4 run title @a actionbar {"text":"Time Expired!","color":"blue"}
execute if score win timer matches 4 run tellraw @a {"text":"Time Expired!","color":"blue"}

#reset scoreboard values
scoreboard players set @a deathtracker 0
scoreboard players reset @a roundkills
scoreboard players reset bombsecond timer
scoreboard players reset defusetime timer
scoreboard players reset bombtime timer
scoreboard players reset win timer
kill @e[type=armor_stand,name="DroppedSpike"]

#change phase
scoreboard players set phase timer 3
scoreboard players set time timer 0
scoreboard players set Seconds score 6
