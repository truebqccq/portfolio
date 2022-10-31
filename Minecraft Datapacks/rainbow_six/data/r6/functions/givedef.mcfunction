#All
replaceitem entity @a[scores={Characters=1..10}] hotbar.6 minecraft:obsidian{display:{Name:"{\"text\":\"Reinforcement Token\"}",Lore:["\"Drop into hopper to reinforce wall\""]}} 2
replaceitem entity @a[scores={Characters=1..10}] hotbar.7 minecraft:blue_stained_glass{CanPlaceOn:["quartz_pillar","red_terracotta","light_blue_wool","oak_planks"]} 16
replaceitem entity @a[scores={Characters=1..10}] armor.chest minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}
replaceitem entity @a[scores={Characters=1..10}] hotbar.1 minecraft:bow{display:{Name:"{\"text\":\"Pistol\"}"},Unbreakable:1,Enchantments:[{id:"minecraft:infinity",lvl:1},{id:"minecraft:punch",lvl:1}]}
replaceitem entity @a[scores={Characters=1..10}] hotbar.2 minecraft:iron_sword{display:{Name:"{\"text\":\"Knife\"}"},Unbreakable:1,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:shulker_box","minecraft:scaffolding"]}
replaceitem entity @a[scores={Characters=1..10}] inventory.18 arrow 1

#Rook (3,1) 1
replaceitem entity @a[scores={Characters=1}] hotbar.3 minecraft:rabbit_spawn_egg{display:{Name:"{\"text\":\"Armor Package\"}"},CanPlaceOn:["minecraft:stripped_oak_wood"]} 1
replaceitem entity @a[scores={Characters=1}] armor.feet minecraft:iron_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=1}] armor.head minecraft:iron_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=1}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:177403,UUIDMost:547642},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=1}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"M4A4\"}"},Damage:147,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:quick_charge",lvl:3}]}
replaceitem entity @a[scores={Characters=1}] weapon.offhand firework_rocket{Fireworks:{Flight:2,Explosions:[{Type:0,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}} 60

#Doc (3,1) 2
replaceitem entity @a[scores={Characters=2}] armor.feet minecraft:iron_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=2}] armor.head minecraft:iron_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=2}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:177403,UUIDMost:547642},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=2}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"P90\"}"},Damage:227,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:quick_charge",lvl:4}]}
replaceitem entity @a[scores={Characters=2}] inventory.0 arrow 64
replaceitem entity @a[scores={Characters=2}] inventory.1 arrow 36
give @a[scores={Characters=2}] minecraft:splash_potion{Potion:"minecraft:strong_healing"} 3

#Cav (1,3) 3
replaceitem entity @a[scores={Characters=3}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"P90\"}"},Damage:227,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:quick_charge",lvl:4}]}
replaceitem entity @a[scores={Characters=3}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.25,Operation:1,UUIDLeast:177403,UUIDMost:547642},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=3}] inventory.0 arrow 64
replaceitem entity @a[scores={Characters=3}] inventory.1 arrow 36

#Kapkan (2,2) 4
replaceitem entity @a[scores={Characters=4}] hotbar.3 minecraft:salmon_spawn_egg{display:{Name:"{\"text\":\"TNT Trap\"}"},CanPlaceOn:["smooth_stone_slab","white_terracotta","polished_andesite","polished_diorite","cyan_terracotta","oak_slab"]} 3
replaceitem entity @a[scores={Characters=4}] armor.feet minecraft:leather_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=4}] armor.head minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=4}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=4}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"AWP\"}"},Damage:267,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:piercing",lvl:4}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.1,Operation:1,UUIDLeast:177403,UUIDMost:547642}]}
replaceitem entity @a[scores={Characters=4}] weapon.offhand firework_rocket{Fireworks:{Flight:3,Explosions:[{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]},{Type:0,Colors:[I;11743532]}]}} 20

#Lesion (2,2) 5
replaceitem entity @a[scores={Characters=5}] hotbar.3 minecraft:tropical_fish_spawn_egg{display:{Name:"{\"text\":\"Poison Trap\"}"},CanPlaceOn:["smooth_stone_slab","white_terracotta","polished_andesite","polished_diorite","cyan_terracotta","oak_slab"]} 3
replaceitem entity @a[scores={Characters=5}] armor.feet minecraft:leather_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=5}] armor.head minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=5}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=5}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"MAG-7\"}"},Damage:102,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:multishot",lvl:1},{id:"minecraft:quick_charge",lvl:1}]}
replaceitem entity @a[scores={Characters=5}] weapon.offhand firework_rocket{Fireworks:{Flight:1,Explosions:[{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}} 25

#Ela (1,3) 6
replaceitem entity @a[scores={Characters=6}] hotbar.3 minecraft:cod_spawn_egg{display:{Name:"{\"text\":\"Slowness Trap\"}"},CanPlaceOn:["smooth_stone_slab","white_terracotta","polished_andesite","polished_diorite","cyan_terracotta","oak_slab"]} 4
replaceitem entity @a[scores={Characters=6}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.25,Operation:1,UUIDLeast:177403,UUIDMost:547642},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=6}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"P90\"}"},Damage:227,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:quick_charge",lvl:4}]}
replaceitem entity @a[scores={Characters=6}] inventory.0 arrow 64
replaceitem entity @a[scores={Characters=6}] inventory.1 arrow 36

#Tachanka (3,1) 7
replaceitem entity @a[scores={Characters=7}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Machine Gun\"}"},CanPlaceOn:["minecraft:stripped_oak_wood"]} 1
replaceitem entity @a[scores={Characters=7}] armor.feet minecraft:iron_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=7}] armor.head minecraft:iron_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=7}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:177403,UUIDMost:547642},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=7}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"MAG-7\"}"},Damage:102,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:multishot",lvl:1},{id:"minecraft:quick_charge",lvl:1}]}
replaceitem entity @a[scores={Characters=7}] weapon.offhand firework_rocket{Fireworks:{Flight:1,Explosions:[{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]},{Type:1,Colors:[I;11743532]}]}} 25

#Valkyrie (2,2) 8
replaceitem entity @a[scores={Characters=8}] hotbar.3 minecraft:vex_spawn_egg{display:{Name:"{\"text\":\"Camera\"}"},CanPlaceOn:["quartz_pillar,","quartz_block","oak_stairs","red_terracotta","light_blue_wool","oak_planks","birch_planks","smooth_stone_slab","white_terracotta","polished_andesite","polished_diorite","cyan_terracotta","oak_slab"]} 1
replaceitem entity @a[scores={Characters=8}] armor.feet minecraft:leather_boots{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=8}] armor.head minecraft:leather_helmet{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[scores={Characters=8}] armor.legs minecraft:leather_leggings{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.9,Operation:0,UUIDMost:82829,UUIDLeast:167220}]}
replaceitem entity @a[scores={Characters=8}] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"P90\"}"},Damage:227,CanDestroy:["minecraft:glass","minecraft:glass_pane","minecraft:blue_stained_glass","minecraft:tripwire"],Enchantments:[{id:"minecraft:quick_charge",lvl:4}]}
replaceitem entity @a[scores={Characters=8}] hotbar.8 minecraft:barrier{display:{Name:"{\"text\":\"Do not put item here\"}"}}
replaceitem entity @a[scores={Characters=8}] inventory.0 arrow 64
replaceitem entity @a[scores={Characters=8}] inventory.1 arrow 36

