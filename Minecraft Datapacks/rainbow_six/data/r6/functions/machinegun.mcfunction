execute at @a[scores={Characters=7},y_rotation=-45..45] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run clone 1007 4 -674 1007 4 -674 ~-1 ~-2 ~-1
execute at @a[scores={Characters=7},y_rotation=45..135] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run clone 1007 4 -675 1007 4 -675 ~1 ~-2 ~-1
execute at @a[scores={Characters=7},y_rotation=135..-135] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run clone 1007 4 -676 1007 4 -676 ~1 ~-2 ~1
execute at @a[scores={Characters=7},y_rotation=-135..-45] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run clone 1007 4 -677 1007 4 -677 ~-1 ~-2 ~1

execute at @a[scores={Characters=7},y_rotation=-45..45] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run setblock ~ ~-2 ~-1 redstone_block
execute at @a[scores={Characters=7},y_rotation=45..135] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run setblock ~ ~-2 ~-1 redstone_block
execute at @a[scores={Characters=7},y_rotation=135..-135] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run setblock ~ ~-2 ~1 redstone_block
execute at @a[scores={Characters=7},y_rotation=-135..-45] run execute at @e[type=minecraft:endermite,name="Machine Gun"] run setblock ~ ~-2 ~1 redstone_block

tp @a[scores={Characters=7},y_rotation=-45..45] ~ ~ ~-2
tp @a[scores={Characters=7},y_rotation=45..135] ~2 ~ ~
tp @a[scores={Characters=7},y_rotation=135..-135] ~ ~ ~2
tp @a[scores={Characters=7},y_rotation=-135..-45] ~-2 ~ ~