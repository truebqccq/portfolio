############################################################################################################################################
#
# RainbowSix
#
############################################################################################################################################

#No Collision
team join nocol @e[type=!minecraft:player]

################################################################# Spawneggs ################################################################

#Exo Thermic Charge
effect give @e[type=minecraft:creeper,name="Exo Thermic Charge"] minecraft:invisibility 100000 0 true
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge"] run data merge entity @e[type=minecraft:creeper,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge"] run data merge entity @e[type=minecraft:creeper,limit=1,sort=nearest] {Invulnerable:1b}
scoreboard players add @e[type=creeper,name="Exo Thermic Charge"] delay 1
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge",scores={delay=60..}] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge",scores={delay=60..}] run particle minecraft:explosion_emitter ~ ~1 ~
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge",scores={delay=60..}] run playsound minecraft:entity.generic.explode master @a[distance=..10]
execute at @e[type=minecraft:creeper,name="Exo Thermic Charge",scores={delay=60..}] run kill @e[type=minecraft:creeper,name="Exo Thermic Charge",scores={delay=60..}]

#Scaffolding
execute at @e[type=minecraft:fox,name="Scaffolding"] run fill ~ ~ ~ ~ ~9 ~ minecraft:scaffolding
execute at @e[type=minecraft:fox,name="Scaffolding"] run kill @e[type=minecraft:fox,name="Scaffolding"]

#Breaching Charge
effect give @e[type=minecraft:silverfish,name="Breaching Charge"] minecraft:invisibility 100000 0 true
scoreboard players add @e[type=silverfish,name="Breaching Charge"] delay 1
execute at @e[type=minecraft:silverfish,name="Breaching Charge",scores={delay=60..}] run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,-2.0,0.0],ExplosionPower:2}
execute at @e[type=minecraft:silverfish,name="Breaching Charge",scores={delay=..10}] run data merge entity @e[type=minecraft:silverfish,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:silverfish,name="Breaching Charge",scores={delay=..10}] run data merge entity @e[type=minecraft:silverfish,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:silverfish,name="Breaching Charge",scores={delay=60..}] run kill @e[type=minecraft:silverfish,name="Breaching Charge",scores={delay=60..}]

#Candela Device
effect give @e[type=minecraft:cave_spider,name="Candela Device"] minecraft:invisibility 100000 0 true
execute at @e[type=minecraft:cave_spider,name="Candela Device"] run data merge entity @e[type=minecraft:cave_spider,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:cave_spider,name="Candela Device"] run data merge entity @e[type=minecraft:cave_spider,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:cave_spider,name="Candela Device",scores={delay=..1}] run function r6:candela
scoreboard players add @e[type=cave_spider,name="Candela Device"] delay 1
execute at @e[type=minecraft:cave_spider,name="Candela Device",scores={delay=60..}] run effect give @a[distance=..7] minecraft:blindness 2 3 true
execute at @e[type=minecraft:cave_spider,name="Candela Device",scores={delay=160..}] run kill @e[type=minecraft:cave_spider,name="Candela Device"]

#Logic Bomb (Noise Maker)
effect give @e[type=minecraft:cat,name="Logic Bomb"] minecraft:invisibility 100000 0 true
effect give @e[type=minecraft:cat,name="Logic Bomb"] minecraft:glowing 100000 0 true
execute at @e[type=minecraft:cat,name="Logic Bomb"] run data merge entity @e[type=minecraft:cat,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:cat,name="Logic Bomb"] run data merge entity @e[type=minecraft:cat,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=..1}] run tp @e[type=minecraft:cat,limit=1,sort=nearest] @r[scores={Characters=..9}]
scoreboard players add @e[type=cat,name="Logic Bomb"] delay 1
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=10}] run playsound minecraft:entity.cat.ambient master @a
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=30}] run playsound minecraft:entity.cat.ambient master @a
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=50}] run playsound minecraft:entity.cat.ambient master @a
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=70}] run playsound minecraft:entity.cat.ambient master @a
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=90}] run playsound minecraft:entity.cat.ambient master @a
execute at @e[type=minecraft:cat,name="Logic Bomb",scores={delay=100..}] run kill @e[type=minecraft:cat,name="Logic Bomb",scores={delay=60..}]

#Fireball
execute at @e[type=snowball] run function r6:fireball

#Nanobot Shot
execute at @e[type=minecraft:drowned,name="Nanobot Shot"] run effect give @a[scores={Characters=11..}] minecraft:absorption 10 1 true
execute at @e[type=minecraft:drowned,name="Nanobot Shot"] run effect give @a[scores={Characters=11..}] minecraft:regeneration 10 1 true
kill @e[type=minecraft:drowned,name="Nanobot Shot"]

#Tachanka
execute at @e[type=minecraft:endermite,name="Machine Gun"] run data merge entity @e[type=minecraft:endermite,name="Machine Gun",limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:endermite,name="Machine Gun"] run data merge entity @e[type=minecraft:endermite,name="Machine Gun",limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:endermite,name="Machine Gun"] run function r6:machinegun
execute at @e[type=minecraft:endermite,name="Machine Gun"] run kill @e[type=minecraft:endermite]

execute at @a[scores={Tachanka=10..},y_rotation=-22.5..22.5] run summon arrow ~ ~0.5 ~ {Motion:[0.0,0.05,0.5],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=22.5..67.5] run summon arrow ~ ~0.5 ~ {Motion:[-0.5,0.05,0.5],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=67.5..112.5] run summon arrow ~ ~0.5 ~ {Motion:[-0.5,0.05,0.0],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=112.5..157.5] run summon arrow ~ ~0.5 ~ {Motion:[-0.5,0.05,-0.5],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=157.5..-157.5] run summon arrow ~ ~0.5 ~ {Motion:[0.0,0.05,-0.5],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=-157.5..-112.5] run summon arrow ~ ~0.5 ~ {Motion:[0.5,0.05,-0.5],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=-112.5..-67.5] run summon arrow ~ ~0.5 ~ {Motion:[0.5,0.05,0.0],NoGravity:1,Color:-1}
execute at @a[scores={Tachanka=10..},y_rotation=-67.5..-22.5] run summon arrow ~ ~0.5 ~ {Motion:[0.5,0.05,0.5],NoGravity:1,Color:-1}
scoreboard players reset @a[scores={Tachanka=10..}] Tachanka

#Caviera Passive
execute as @a[scores={Sneak=1..,Characters=3}] run setblock 993 4 -666 redstone_block destroy

#Rook Armor Package 
execute at @e[type=minecraft:rabbit,name="Armor Package"] run setblock ~ ~ ~ shulker_box{Items:[{Slot:0,id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:3},{id:projectile_protection,lvl:3}],Unbreakable:1}},{Slot:1,id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:3},{id:projectile_protection,lvl:3}],Unbreakable:1}},{Slot:2,id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:3},{id:projectile_protection,lvl:3}],Unbreakable:1}},{Slot:3,id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:3},{id:projectile_protection,lvl:3}],Unbreakable:1}},{Slot:4,id:chainmail_chestplate,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:3},{id:projectile_protection,lvl:3}],Unbreakable:1}}]} replace
kill @e[type=minecraft:rabbit,name="Armor Package"]

#TNT Trap
effect give @e[type=minecraft:salmon,name="TNT Trap"] minecraft:invisibility 100000 0 true
execute at @e[type=minecraft:salmon,name="TNT Trap"] run data merge entity @e[type=minecraft:salmon,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:salmon,name="TNT Trap"] run data merge entity @e[type=minecraft:salmon,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:salmon,name="TNT Trap",scores={delay=..5}] run setblock ~ ~ ~ minecraft:tripwire
execute at @e[type=minecraft:salmon,name="TNT Trap"] run scoreboard players add @e[type=minecraft:salmon,name="TNT Trap"] delay 1
execute as @e[type=minecraft:salmon,name="TNT Trap",scores={delay=6..}] at @s unless block ~ ~ ~ tripwire run kill @s
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:salmon,name="TNT Trap",distance=..0.8,scores={delay=5..}] run setblock ~ ~ ~ air
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:salmon,name="TNT Trap",distance=..0.5,scores={delay=5..}] run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,-0.5,0.0],ExplosionPower:1}

#Poison Trap
effect give @e[type=minecraft:tropical_fish,name="Poison Trap"] minecraft:invisibility 100000 0 true
execute at @e[type=minecraft:tropical_fish,name="Poison Trap"] run data merge entity @e[type=minecraft:tropical_fish,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:tropical_fish,name="Poison Trap"] run data merge entity @e[type=minecraft:tropical_fish,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:tropical_fish,name="Poison Trap",scores={delay=..5}] run setblock ~ ~ ~ minecraft:tripwire
execute at @e[type=minecraft:tropical_fish,name="Poison Trap"] run scoreboard players add @e[type=minecraft:tropical_fish,name="Poison Trap"] delay 1
execute as @e[type=minecraft:tropical_fish,name="Poison Trap",scores={delay=6..}] at @s unless block ~ ~ ~ tripwire run kill @s
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:tropical_fish,name="Poison Trap",distance=..0.8,scores={delay=5..}] run setblock ~ ~ ~ air
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:tropical_fish,name="Poison Trap",distance=..0.8,scores={delay=5..}] run effect give @s minecraft:poison 7 0 true

#Slowness Trap
effect give @e[type=minecraft:cod,name="Slowness Trap"] minecraft:invisibility 100000 0 true
execute at @e[type=minecraft:cod,name="Slowness Trap"] run data merge entity @e[type=minecraft:cod,limit=1,sort=nearest] {NoAI:1b}
execute at @e[type=minecraft:cod,name="Slowness Trap"] run data merge entity @e[type=minecraft:cod,limit=1,sort=nearest] {Invulnerable:1b}
execute at @e[type=minecraft:cod,name="Slowness Trap",scores={delay=..5}] run setblock ~ ~ ~ minecraft:tripwire
execute at @e[type=minecraft:cod,name="Slowness Trap"] run scoreboard players add @e[type=minecraft:cod,name="Slowness Trap"] delay 1
execute as @e[type=minecraft:cod,name="Slowness Trap",scores={delay=6..}] at @s unless block ~ ~ ~ tripwire run kill @s
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:cod,name="Slowness Trap",distance=..0.8,scores={delay=5..}] run setblock ~ ~ ~ air
execute as @a[scores={Characters=11..20}] at @s if entity @e[type=minecraft:cod,name="Slowness Trap",distance=..0.5,scores={delay=5..}] run effect give @s minecraft:slowness 10 3 true


