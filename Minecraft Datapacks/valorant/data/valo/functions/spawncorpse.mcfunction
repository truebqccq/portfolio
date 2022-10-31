#spawns appropriate corpse

#drops spike
execute if entity @a[scores={death=1},nbt={Inventory:[{id:"minecraft:trapped_chest"}]}] run summon armor_stand ~ ~-1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"ender_chest",Count:1b}],HandItems:[{},{}],CustomName:'{"text":"DroppedSpike"}'}
execute if entity @a[scores={death=1},nbt={Inventory:[{id:"minecraft:trapped_chest"}]}] run title @a actionbar {"text":"Spike Dropped!","color":"dark_red"}
execute as @a[scores={death=1},nbt={Inventory:[{id:"minecraft:trapped_chest"}]}] run clear @s trapped_chest

#resets score
scoreboard players set @a[scores={deathtracker=1}] death 0