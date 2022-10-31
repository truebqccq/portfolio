execute at @a[scores={Characters=18},y_rotation=-45..45] run tp @e[type=minecraft:cave_spider,name="Candela Device"] ~ ~1 ~6
execute at @a[scores={Characters=18},y_rotation=45..135] run tp @e[type=minecraft:cave_spider,name="Candela Device"] ~-6 ~1 ~
execute at @a[scores={Characters=18},y_rotation=135..-135] run tp @e[type=minecraft:cave_spider,name="Candela Device"] ~ ~1 ~-6
execute at @a[scores={Characters=18},y_rotation=-135..-45] run tp @e[type=minecraft:cave_spider,name="Candela Device"] ~6 ~1 ~
execute at @e[type=minecraft:cave_spider,name="Candela Device"] run summon tnt ~ ~ ~ {Fuse:60}