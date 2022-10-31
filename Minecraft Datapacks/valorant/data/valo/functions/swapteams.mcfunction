team join temp @a[team=def]
team join def @a[team=atk]
team join atk @a[team=temp]
scoreboard players operation temp score = def score
scoreboard players operation def score = atk score
scoreboard players operation atk score = temp score
scoreboard players reset temp score
scoreboard players set @a money 800

#remove ultimates
clear @a emerald
function valo:_agent_start

