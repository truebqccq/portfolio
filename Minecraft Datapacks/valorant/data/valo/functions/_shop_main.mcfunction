execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Shorty (x2)"}]'}}}]}] if score @s money >= Shorty shop unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{display:{Name:'[{"text":"Shorty (x2)","italic":false}]'}}}]}] run scoreboard players set @s shop 1
execute as @a[scores={shop=1}] run give @s crossbow{Unbreakable:1,Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}}}],display:{Name:'[{"text":"Shorty (x2)","italic":false}]',Lore:['[{"text":"Damage: 4 Hearts"}]','[{"text":"Rate of Fire: Preloaded"}]','[{"text":"Special: Shoots Multiple AOE Pellets"}]','[{"text":"Note: No reserve ammo"}]']},Enchantments:[{id:"multishot",lvl:1}],HideFlags:1} 2
execute as @a[scores={shop=1}] run scoreboard players operation @s money -= Shorty shop
execute as @a[scores={shop=1}] run clear @s name_tag{display:{Name:'[{"text":"Shorty (x2)"}]'}}
execute as @a[scores={shop=1}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Sheriff"}]'}}}]}] if score @s money >= Sheriff shop run scoreboard players set @s shop 2
execute as @a[scores={shop=2}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Sheriff","italic":false}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Slow"}]']},Enchantments:[{id:"quick_charge",lvl:2}],HideFlags:1} 1
execute as @a[scores={shop=2}] run give @s tipped_arrow{display:{Name:'{"text":"High Damage Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}],Potion:"minecraft:harming"} 20
execute as @a[scores={shop=2}] run scoreboard players operation @s money -= Sheriff shop
execute as @a[scores={shop=2}] run clear @s name_tag{display:{Name:'[{"text":"Sheriff"}]'}}
execute as @a[scores={shop=2}] run give @s name_tag{display:{Name:'[{"text":"Sheriff"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Slow"}]']}}
execute as @a[scores={shop=2}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Marshall"}]'}}}]}] if score @s money >= Marshall shop run scoreboard players set @s shop 3
execute as @a[scores={shop=3}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Marshall","italic":false}]',Lore:['[{"text":"Damage: 10 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']},Enchantments:[{id:"piercing",lvl:5}],HideFlags:1} 1
execute as @a[scores={shop=3}] run give @s tipped_arrow{display:{Name:'{"text":"Sniper Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}],Potion:"minecraft:harming"} 20
execute as @a[scores={shop=3}] run scoreboard players operation @s money -= Marshall shop
execute as @a[scores={shop=3}] run clear @s name_tag{display:{Name:'[{"text":"Marshall"}]'}}
execute as @a[scores={shop=3}] run give @s name_tag{display:{Name:'[{"text":"Marshall"}]',Lore:['[{"text":"Damage: 10 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']}}
execute as @a[scores={shop=3}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Spectre"}]'}}}]}] if score @s money >= Spectre shop run scoreboard players set @s shop 4
execute as @a[scores={shop=4}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Spectre","italic":false}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Fast"}]']},Enchantments:[{id:"quick_charge",lvl:4}],HideFlags:1} 1
execute as @a[scores={shop=4}] run give @s tipped_arrow{display:{Name:'{"text":"Low Damage Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:1b,Duration:1}],Potion:"minecraft:harming"} 90
execute as @a[scores={shop=4}] run scoreboard players operation @s money -= Spectre shop
execute as @a[scores={shop=4}] run clear @s name_tag{display:{Name:'[{"text":"Spectre"}]'}}
execute as @a[scores={shop=4}] run give @s name_tag{display:{Name:'[{"text":"Spectre"}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Fast"}]']}}
execute as @a[scores={shop=4}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Judge"}]'}}}]}] if score @s money >= Judge shop run scoreboard players set @s shop 5
execute as @a[scores={shop=5}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Judge","italic":false}]',Lore:['[{"text":"Damage: 2 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Shoots multiple AOE pellets"}]']},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:2}],HideFlags:1} 1
execute as @a[scores={shop=5}] run give @s firework_rocket{display:{Name:'{"text":"High Explosive Pellets","color":"dark_purple"}',Lore:['[{"text":"Keep in offhand to use"}]']},Fireworks:{Flight:1,Explosions:[{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}} 25
execute as @a[scores={shop=5}] run scoreboard players operation @s money -= Judge shop
execute as @a[scores={shop=5}] run clear @s name_tag{display:{Name:'[{"text":"Judge"}]'}}
execute as @a[scores={shop=5}] run give @s name_tag{display:{Name:'[{"text":"Judge"}]',Lore:['[{"text":"Damage: 2 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Shoots multiple AOE pellets"}]']}}
execute as @a[scores={shop=5}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Bulldog"}]'}}}]}] if score @s money >= Bulldog shop run scoreboard players set @s shop 6
execute as @a[scores={shop=6}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Bulldog","italic":false}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots multiple arrows"}]']},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:3}],HideFlags:1} 1
execute as @a[scores={shop=6}] run give @s tipped_arrow{display:{Name:'{"text":"High Damage Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}],Potion:"minecraft:harming"} 50
execute as @a[scores={shop=6}] run scoreboard players operation @s money -= Bulldog shop
execute as @a[scores={shop=6}] run clear @s name_tag{display:{Name:'[{"text":"Bulldog"}]'}}
execute as @a[scores={shop=6}] run give @s name_tag{display:{Name:'[{"text":"Bulldog"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots multiple arrows"}]']}}
execute as @a[scores={shop=6}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Guardian"}]'}}}]}] if score @s money >= Guardian shop run scoreboard players set @s shop 7
execute as @a[scores={shop=7}] run give @s bow{Unbreakable:1,display:{Name:'[{"text":"Guardian","italic":false}]',Lore:['[{"text":"Damage: 4 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Does extra knockback towards opponents"}]']},Enchantments:[{id:"power",lvl:5},{id:"infinity",lvl:1}],HideFlags:1} 1
execute as @a[scores={shop=7}] run give @s arrow{display:{Name:'{"text":"Special Ammo","color":"dark_purple"}'}} 1
execute as @a[scores={shop=7}] run scoreboard players operation @s money -= Guardian shop
execute as @a[scores={shop=7}] run clear @s name_tag{display:{Name:'[{"text":"Guardian"}]'}}
execute as @a[scores={shop=7}] run give @s name_tag{display:{Name:'[{"text":"Guardian"}]',Lore:['[{"text":"Damage: 4 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Does extra knockback towards opponents"}]']}}
execute as @a[scores={shop=7}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Vandal"}]'}}}]}] if score @s money >= Vandal shop run scoreboard players set @s shop 8
execute as @a[scores={shop=8}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Vandal","italic":false}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots AOE Rockets"}]']},Enchantments:[{id:"quick_charge",lvl:3}],HideFlags:1} 1
execute as @a[scores={shop=8}] run give @s firework_rocket{display:{Name:'{"text":"High Explosive Round","color":"dark_purple"}',Lore:['[{"text":"Keep in offhand to use"}]']},Fireworks:{Flight:3,Explosions:[{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}} 50
execute as @a[scores={shop=8}] run scoreboard players operation @s money -= Vandal shop
execute as @a[scores={shop=8}] run clear @s name_tag{display:{Name:'[{"text":"Vandal"}]'}}
execute as @a[scores={shop=8}] run give @s name_tag{display:{Name:'[{"text":"Vandal"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots AOE Rockets"}]']}}
execute as @a[scores={shop=8}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Odin"}]'}}}]}] if score @s money >= Odin shop run scoreboard players set @s shop 9
execute as @a[scores={shop=9}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Odin","italic":false}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Very Fast"}]']},Enchantments:[{id:"quick_charge",lvl:5}],HideFlags:1} 1
execute as @a[scores={shop=9}] run give @s tipped_arrow{display:{Name:'{"text":"Low Damage Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:1b,Duration:1}],Potion:"minecraft:harming"} 120
execute as @a[scores={shop=9}] run scoreboard players operation @s money -= Odin shop
execute as @a[scores={shop=9}] run clear @s name_tag{display:{Name:'[{"text":"Odin"}]'}}
execute as @a[scores={shop=9}] run give @s name_tag{display:{Name:'[{"text":"Odin"}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Very Fast"}]']}}
execute as @a[scores={shop=9}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Operator"}]'}}}]}] if score @s money >= Operator shop run scoreboard players set @s shop 10
execute as @a[scores={shop=10}] run give @s crossbow{Unbreakable:1,display:{Name:'[{"text":"Operator","italic":false}]',Lore:['[{"text":"Damage: 20 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']},Enchantments:[{id:"piercing",lvl:5}],HideFlags:1} 1
execute as @a[scores={shop=10}] run give @s tipped_arrow{display:{Name:'{"text":"Sniper Ammo","color":"dark_purple"}'},HideFlags:32,CustomPotionEffects:[{Id:7b,Amplifier:4b,Duration:1}],Potion:"minecraft:harming"} 15
execute as @a[scores={shop=10}] run scoreboard players operation @s money -= Operator shop
execute as @a[scores={shop=10}] run clear @s name_tag{display:{Name:'[{"text":"Operator"}]'}}
execute as @a[scores={shop=10}] run give @s name_tag{display:{Name:'[{"text":"Operator"}]',Lore:['[{"text":"Damage: 20 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']}}
execute as @a[scores={shop=10}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Light Shield"}]'}}}]}] if score @s money >= LightShield shop run scoreboard players set @s shop 11
execute as @a[scores={shop=11}] run item replace entity @a armor.head with glass{display:{Name:'{"text":"Light Shield"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-1814740144,1906197282,-1519380075,-1931447906],Slot:"head"}]}
execute as @a[scores={shop=11}] run scoreboard players operation @s money -= LightShield shop
execute as @a[scores={shop=11}] run effect give @s instant_health 1 3
execute as @a[scores={shop=11}] run clear @s name_tag{display:{Name:'[{"text":"Light Shield"}]'}}
execute as @a[scores={shop=11}] run scoreboard players reset @s shop

execute as @a[nbt={Inventory:[{id:"minecraft:name_tag",Slot:-106b,tag:{display:{Name:'[{"text":"Full Shield"}]'}}}]}] if score @s money >= FullShield shop run scoreboard players set @s shop 12
execute as @a[scores={shop=12}] run item replace entity @a armor.head with glass{display:{Name:'{"text":"Full Shield"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8,Operation:0,UUID:[I;-567989943,732057485,-1835287450,703295096],Slot:"head"}]}
execute as @a[scores={shop=12}] run scoreboard players operation @s money -= FullShield shop
execute as @a[scores={shop=11}] run effect give @s instant_health 1 3
execute as @a[scores={shop=12}] run clear @s name_tag{display:{Name:'[{"text":"Full Shield"}]'}}
execute as @a[scores={shop=12}] run scoreboard players reset @s shop