#time tracker, prep phase timer, round timer, round end timer
execute if score phase timer matches 0.. run scoreboard players add time timer 1
execute if score phase timer matches 0..1 if score time timer matches 20 run scoreboard players remove Seconds score 1
execute if score phase timer matches 3 if score time timer matches 20 run scoreboard players remove Seconds score 1
execute if score phase timer matches 0.. if score time timer matches 20 run scoreboard players reset time timer
execute store result bossbar timer value run scoreboard players get Seconds score

execute if score phase timer matches 0 if score Seconds score matches 0 run function valo:startround
execute if score phase timer matches 1 if score Seconds score matches 0 run scoreboard players set win timer 4
execute if score phase timer matches 3 if score Seconds score matches 3 if score round score matches 12 run function valo:swapteams
execute if score phase timer matches 3 if score Seconds score matches 0 run function valo:startprep 

#delete arrows
kill @e[type=arrow,nbt={inGround:1b,Potion:"minecraft:harming"}]

#runs shop function during buy phase
execute if score phase timer matches 1 run function valo:_shop_main
clear @a crossbow{Charged:0b,display:{Name:'[{"text":"Shorty (x2)","italic":false}]'}}

#elimination win
execute if score phase timer matches 1 if score atkdeath deathtracker = atkplayers deathtracker run scoreboard players set win timer 3
execute if score phase timer matches 1 if score defdeath deathtracker = defplayers deathtracker run scoreboard players set win timer 2 

#round end
execute if score win timer matches 1..4 run function valo:endround

#keep dead players on alive players
execute as @a[scores={deathtracker=1},team=atk] unless score atkdeath deathtracker = atkplayers deathtracker unless entity @a[team=atk,distance=..3,scores={deathtracker=0}] run tp @s @r[team=atk,scores={deathtracker=0}]
execute as @a[scores={deathtracker=1},team=def] unless score defdeath deathtracker = defplayers deathtracker unless entity @a[team=def,distance=..3,scores={deathtracker=0}] run tp @s @r[team=def,scores={deathtracker=0}]

#spawn corpse
execute at @a[scores={death=1}] run function valo:spawncorpse

#kill reward and ult charge
execute as @a[scores={roundkills=1..}] run give @s emerald{display:{Name:'[{"text":"Ultimate Token","italic":false,"color":"green"}]',Lore:['[{"text":"This item will be replaced with your ultimate ability"}]','[{"text":"once you have enough charges"}]']}} 1
execute as @a[scores={roundkills=1..}] run scoreboard players add @s money 200
execute as @a[scores={roundkills=1..}] run scoreboard players remove @s roundkills 1