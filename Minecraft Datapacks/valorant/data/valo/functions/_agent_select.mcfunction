#agent select
execute as @a[scores={cmdTrigger=1},team=atk] if entity @a[scores={agents=1},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=1},team=atk] unless entity @a[scores={agents=1},team=atk] run title @s actionbar {"text":"You have selected Astra!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=1},team=atk] unless entity @a[scores={agents=1},team=atk] run tellraw truebqccq ["",{"selector":"@s"},{"text":" has selected Astra!","color":"aqua"}]
execute as @a[scores={cmdTrigger=1},team=atk] unless entity @a[scores={agents=1},team=atk] run scoreboard players set @s agents 1

execute as @a[scores={cmdTrigger=2},team=atk] if entity @a[scores={agents=2},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=2},team=atk] unless entity @a[scores={agents=2},team=atk] run title @s actionbar {"text":"You have selected Breach!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=2},team=atk] unless entity @a[scores={agents=2},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Breach!","color":"aqua"}]
execute as @a[scores={cmdTrigger=2},team=atk] unless entity @a[scores={agents=2},team=atk] run scoreboard players set @s agents 2


execute as @a[scores={cmdTrigger=3},team=atk] if entity @a[scores={agents=3},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=3},team=atk] unless entity @a[scores={agents=3},team=atk] run title @s actionbar {"text":"You have selected Brimstone!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=3},team=atk] unless entity @a[scores={agents=3},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Brimstone!","color":"aqua"}]
execute as @a[scores={cmdTrigger=3},team=atk] unless entity @a[scores={agents=3},team=atk] run scoreboard players set @s agents 3


execute as @a[scores={cmdTrigger=4},team=atk] if entity @a[scores={agents=4},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=4},team=atk] unless entity @a[scores={agents=4},team=atk] run title @s actionbar {"text":"You have selected Cypher!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=4},team=atk] unless entity @a[scores={agents=4},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Cypher!","color":"aqua"}]
execute as @a[scores={cmdTrigger=4},team=atk] unless entity @a[scores={agents=4},team=atk] run scoreboard players set @s agents 4


execute as @a[scores={cmdTrigger=5},team=atk] if entity @a[scores={agents=5},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=5},team=atk] unless entity @a[scores={agents=5},team=atk] run title @s actionbar {"text":"You have selected Jett!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=5},team=atk] unless entity @a[scores={agents=5},team=atk] run tellraw @s [{"text":"Press sneak while in the air to activate drift","color":"aqua"}]
execute as @a[scores={cmdTrigger=5},team=atk] unless entity @a[scores={agents=5},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Jett!","color":"aqua"}]
execute as @a[scores={cmdTrigger=5},team=atk] unless entity @a[scores={agents=5},team=atk] run scoreboard players set @s agents 5


execute as @a[scores={cmdTrigger=6},team=atk] if entity @a[scores={agents=6},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=6},team=atk] unless entity @a[scores={agents=6},team=atk] run title @s actionbar {"text":"You have selected Kayo!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=6},team=atk] unless entity @a[scores={agents=6},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Kayo!","color":"aqua"}]
execute as @a[scores={cmdTrigger=6},team=atk] unless entity @a[scores={agents=6},team=atk] run scoreboard players set @s agents 6


execute as @a[scores={cmdTrigger=7},team=atk] if entity @a[scores={agents=7},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=7},team=atk] unless entity @a[scores={agents=7},team=atk] run title @s actionbar {"text":"You have selected Killjoy!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=7},team=atk] unless entity @a[scores={agents=7},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Killjoy!","color":"aqua"}]
execute as @a[scores={cmdTrigger=7},team=atk] unless entity @a[scores={agents=7},team=atk] run scoreboard players set @s agents 7


execute as @a[scores={cmdTrigger=8},team=atk] if entity @a[scores={agents=8},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=8},team=atk] unless entity @a[scores={agents=8},team=atk] run title @s actionbar {"text":"You have selected Omen!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=8},team=atk] unless entity @a[scores={agents=8},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Omen!","color":"aqua"}]
execute as @a[scores={cmdTrigger=8},team=atk] unless entity @a[scores={agents=8},team=atk] run scoreboard players set @s agents 8


execute as @a[scores={cmdTrigger=9},team=atk] if entity @a[scores={agents=9},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=9},team=atk] unless entity @a[scores={agents=9},team=atk] run title @s actionbar {"text":"You have selected Phoenix!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=9},team=atk] unless entity @a[scores={agents=9},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Phoenix!","color":"aqua"}]
execute as @a[scores={cmdTrigger=9},team=atk] unless entity @a[scores={agents=9},team=atk] run scoreboard players set @s agents 9


execute as @a[scores={cmdTrigger=10},team=atk] if entity @a[scores={agents=10},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=10},team=atk] unless entity @a[scores={agents=10},team=atk] run title @s actionbar {"text":"You have selected Raze!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=10},team=atk] unless entity @a[scores={agents=10},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Raze!","color":"aqua"}]
execute as @a[scores={cmdTrigger=10},team=atk] unless entity @a[scores={agents=10},team=atk] run scoreboard players set @s agents 10


execute as @a[scores={cmdTrigger=11},team=atk] if entity @a[scores={agents=11},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=11},team=atk] unless entity @a[scores={agents=11},team=atk] run title @s actionbar {"text":"You have selected Reyna!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=11},team=atk] unless entity @a[scores={agents=11},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Reyna!","color":"aqua"}]
execute as @a[scores={cmdTrigger=11},team=atk] unless entity @a[scores={agents=11},team=atk] run scoreboard players set @s agents 11


execute as @a[scores={cmdTrigger=12},team=atk] if entity @a[scores={agents=12},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=12},team=atk] unless entity @a[scores={agents=12},team=atk] run title @s actionbar {"text":"You have selected Sage!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=12},team=atk] unless entity @a[scores={agents=12},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Sage!","color":"aqua"}]
execute as @a[scores={cmdTrigger=12},team=atk] unless entity @a[scores={agents=12},team=atk] run scoreboard players set @s agents 12


execute as @a[scores={cmdTrigger=13},team=atk] if entity @a[scores={agents=13},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=13},team=atk] unless entity @a[scores={agents=13},team=atk] run title @s actionbar {"text":"You have selected Skye!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=13},team=atk] unless entity @a[scores={agents=13},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Skye!","color":"aqua"}]
execute as @a[scores={cmdTrigger=13},team=atk] unless entity @a[scores={agents=13},team=atk] run scoreboard players set @s agents 13


execute as @a[scores={cmdTrigger=14},team=atk] if entity @a[scores={agents=14},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=14},team=atk] unless entity @a[scores={agents=14},team=atk] run title @s actionbar {"text":"You have selected Sova!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=14},team=atk] unless entity @a[scores={agents=14},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Sova!","color":"aqua"}]
execute as @a[scores={cmdTrigger=14},team=atk] unless entity @a[scores={agents=14},team=atk] run scoreboard players set @s agents 14


execute as @a[scores={cmdTrigger=15},team=atk] if entity @a[scores={agents=15},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=15},team=atk] unless entity @a[scores={agents=15},team=atk] run title @s actionbar {"text":"You have selected Viper!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=15},team=atk] unless entity @a[scores={agents=15},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Viper!","color":"aqua"}]
execute as @a[scores={cmdTrigger=15},team=atk] unless entity @a[scores={agents=15},team=atk] run scoreboard players set @s agents 15


execute as @a[scores={cmdTrigger=16},team=atk] if entity @a[scores={agents=16},team=atk] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=16},team=atk] unless entity @a[scores={agents=16},team=atk] run title @s actionbar {"text":"You have selected Yoru!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=16},team=atk] unless entity @a[scores={agents=16},team=atk] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Yoru!","color":"aqua"}]
execute as @a[scores={cmdTrigger=16},team=atk] unless entity @a[scores={agents=16},team=atk] run scoreboard players set @s agents 16

######################################################################################################################

execute as @a[scores={cmdTrigger=1},team=def] if entity @a[scores={agents=1},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=1},team=def] unless entity @a[scores={agents=1},team=def] run title @s actionbar {"text":"You have selected Astra!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=1},team=def] unless entity @a[scores={agents=1},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Astra!","color":"aqua"}]
execute as @a[scores={cmdTrigger=1},team=def] unless entity @a[scores={agents=1},team=def] run scoreboard players set @s agents 1


execute as @a[scores={cmdTrigger=2},team=def] if entity @a[scores={agents=2},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=2},team=def] unless entity @a[scores={agents=2},team=def] run title @s actionbar {"text":"You have selected Breach!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=2},team=def] unless entity @a[scores={agents=2},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Breach!","color":"aqua"}]
execute as @a[scores={cmdTrigger=2},team=def] unless entity @a[scores={agents=2},team=def] run scoreboard players set @s agents 2


execute as @a[scores={cmdTrigger=3},team=def] if entity @a[scores={agents=3},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=3},team=def] unless entity @a[scores={agents=3},team=def] run title @s actionbar {"text":"You have selected Brimstone!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=3},team=def] unless entity @a[scores={agents=3},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Brimstone!","color":"aqua"}]
execute as @a[scores={cmdTrigger=3},team=def] unless entity @a[scores={agents=3},team=def] run scoreboard players set @s agents 3


execute as @a[scores={cmdTrigger=4},team=def] if entity @a[scores={agents=4},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=4},team=def] unless entity @a[scores={agents=4},team=def] run title @s actionbar {"text":"You have selected Cypher!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=4},team=def] unless entity @a[scores={agents=4},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Cypher!","color":"aqua"}]
execute as @a[scores={cmdTrigger=4},team=def] unless entity @a[scores={agents=4},team=def] run scoreboard players set @s agents 4


execute as @a[scores={cmdTrigger=5},team=def] if entity @a[scores={agents=5},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=5},team=def] unless entity @a[scores={agents=5},team=def] run title @s actionbar {"text":"You have selected Jett!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=5},team=def] unless entity @a[scores={agents=5},team=def] run tellraw @s [{"text":"Press sneak while in the air to activate drift","color":"aqua"}]
execute as @a[scores={cmdTrigger=5},team=def] unless entity @a[scores={agents=5},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Jett!","color":"aqua"}]
execute as @a[scores={cmdTrigger=5},team=def] unless entity @a[scores={agents=5},team=def] run scoreboard players set @s agents 5


execute as @a[scores={cmdTrigger=6},team=def] if entity @a[scores={agents=6},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=6},team=def] unless entity @a[scores={agents=6},team=def] run title @s actionbar {"text":"You have selected Kayo!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=6},team=def] unless entity @a[scores={agents=6},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Kayo!","color":"aqua"}]
execute as @a[scores={cmdTrigger=6},team=def] unless entity @a[scores={agents=6},team=def] run scoreboard players set @s agents 6


execute as @a[scores={cmdTrigger=7},team=def] if entity @a[scores={agents=7},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=7},team=def] unless entity @a[scores={agents=7},team=def] run title @s actionbar {"text":"You have selected Killjoy!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=7},team=def] unless entity @a[scores={agents=7},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Killjoy!","color":"aqua"}]
execute as @a[scores={cmdTrigger=7},team=def] unless entity @a[scores={agents=7},team=def] run scoreboard players set @s agents 7


execute as @a[scores={cmdTrigger=8},team=def] if entity @a[scores={agents=8},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=8},team=def] unless entity @a[scores={agents=8},team=def] run title @s actionbar {"text":"You have selected Omen!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=8},team=def] unless entity @a[scores={agents=8},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Omen!","color":"aqua"}]
execute as @a[scores={cmdTrigger=8},team=def] unless entity @a[scores={agents=8},team=def] run scoreboard players set @s agents 8


execute as @a[scores={cmdTrigger=9},team=def] if entity @a[scores={agents=9},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=9},team=def] unless entity @a[scores={agents=9},team=def] run title @s actionbar {"text":"You have selected Phoenix!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=9},team=def] unless entity @a[scores={agents=9},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Phoenix!","color":"aqua"}]
execute as @a[scores={cmdTrigger=9},team=def] unless entity @a[scores={agents=9},team=def] run scoreboard players set @s agents 9


execute as @a[scores={cmdTrigger=10},team=def] if entity @a[scores={agents=10},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=10},team=def] unless entity @a[scores={agents=10},team=def] run title @s actionbar {"text":"You have selected Raze!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=10},team=def] unless entity @a[scores={agents=10},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Raze!","color":"aqua"}]
execute as @a[scores={cmdTrigger=10},team=def] unless entity @a[scores={agents=10},team=def] run scoreboard players set @s agents 10


execute as @a[scores={cmdTrigger=11},team=def] if entity @a[scores={agents=11},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=11},team=def] unless entity @a[scores={agents=11},team=def] run title @s actionbar {"text":"You have selected Reyna!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=11},team=def] unless entity @a[scores={agents=11},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Reyna!","color":"aqua"}]
execute as @a[scores={cmdTrigger=11},team=def] unless entity @a[scores={agents=11},team=def] run scoreboard players set @s agents 11


execute as @a[scores={cmdTrigger=12},team=def] if entity @a[scores={agents=12},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=12},team=def] unless entity @a[scores={agents=12},team=def] run title @s actionbar {"text":"You have selected Sage!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=12},team=def] unless entity @a[scores={agents=12},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Sage!","color":"aqua"}]
execute as @a[scores={cmdTrigger=12},team=def] unless entity @a[scores={agents=12},team=def] run scoreboard players set @s agents 12


execute as @a[scores={cmdTrigger=13},team=def] if entity @a[scores={agents=13},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=13},team=def] unless entity @a[scores={agents=13},team=def] run title @s actionbar {"text":"You have selected Skye!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=13},team=def] unless entity @a[scores={agents=13},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Skye!","color":"aqua"}]
execute as @a[scores={cmdTrigger=13},team=def] unless entity @a[scores={agents=13},team=def] run scoreboard players set @s agents 13


execute as @a[scores={cmdTrigger=14},team=def] if entity @a[scores={agents=14},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=14},team=def] unless entity @a[scores={agents=14},team=def] run title @s actionbar {"text":"You have selected Sova!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=14},team=def] unless entity @a[scores={agents=14},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Sova!","color":"aqua"}]
execute as @a[scores={cmdTrigger=14},team=def] unless entity @a[scores={agents=14},team=def] run scoreboard players set @s agents 14


execute as @a[scores={cmdTrigger=15},team=def] if entity @a[scores={agents=15},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=15},team=def] unless entity @a[scores={agents=15},team=def] run title @s actionbar {"text":"You have selected Viper!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=15},team=def] unless entity @a[scores={agents=15},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Viper!","color":"aqua"}]
execute as @a[scores={cmdTrigger=15},team=def] unless entity @a[scores={agents=15},team=def] run scoreboard players set @s agents 15


execute as @a[scores={cmdTrigger=16},team=def] if entity @a[scores={agents=16},team=def] run title @s actionbar {"text":"Someone has already selected this agent!","bold":true,"italic":true,"color":"red"}
execute as @a[scores={cmdTrigger=16},team=def] unless entity @a[scores={agents=16},team=def] run title @s actionbar {"text":"You have selected Yoru!","bold":true,"italic":true,"color":"green"}
execute as @a[scores={cmdTrigger=16},team=def] unless entity @a[scores={agents=16},team=def] run tellraw truebqccq [{"selector":"@s"},{"text":" has selected Yoru!","color":"aqua"}]
execute as @a[scores={cmdTrigger=16},team=def] unless entity @a[scores={agents=16},team=def] run scoreboard players set @s agents 16

scoreboard players set @a[scores={cmdTrigger=1..,agents=1..}] cmdTrigger 0