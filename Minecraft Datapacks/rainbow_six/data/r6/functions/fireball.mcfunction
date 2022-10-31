execute at @e[type=snowball] run summon minecraft:fireball ~ ~ ~ {direction:[0.0,-1.0,0.0],ExplosionPower:3}
execute store result score x Motion run data get entity @e[type=snowball,limit=1] Motion[0] 10000
execute store result score y Motion run data get entity @e[type=snowball,limit=1] Motion[1] 10000
execute store result score z Motion run data get entity @e[type=snowball,limit=1] Motion[2] 10000
execute store result entity @e[type=fireball,limit=1,sort=nearest] direction[0] double 0.0001 run scoreboard players get x Motion
execute store result entity @e[type=fireball,limit=1,sort=nearest] direction[1] double 0.0001 run scoreboard players get y Motion
execute store result entity @e[type=fireball,limit=1,sort=nearest] direction[2] double 0.0001 run scoreboard players get z Motion
execute store result entity @e[type=fireball,limit=1,sort=nearest] power[0] double 0.00001 run scoreboard players get x Motion
execute store result entity @e[type=fireball,limit=1,sort=nearest] power[1] double 0.00001 run scoreboard players get y Motion  
execute store result entity @e[type=fireball,limit=1,sort=nearest] power[2] double 0.00001 run scoreboard players get z Motion
kill @e[type=snowball]