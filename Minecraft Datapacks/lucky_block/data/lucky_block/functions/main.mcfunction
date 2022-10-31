################################################################################################
#
# Lucky Block
#
################################################################################################

scoreboard objectives add kit dummy

################################################################# Spawneggs ################################################################

execute as @a[scores={kit=1}] run give @s minecraft:end_stone 24
execute as @a[scores={kit=1}] run give @s minecraft:diamond_pickaxe 1
execute as @a[scores={kit=1}] run give @s minecraft:cooked_beef 64
execute as @a[scores={kit=1}] run give @s minecraft:experience_bottle 64
execute as @a[scores={kit=1}] run scoreboard players add @s kit 1