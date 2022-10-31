#Set up player shop items
item replace entity @a inventory.0 with amethyst_shard{display:{Name:'[{"text":"README (Player Shop)","italic":false,"color":"gold"}]',Lore:['[{"text":"-Place item in offhand slot to purchase","italic":false}]','[{"text":"-Selling is DISABLED","italic":false}]','[{"text":"-Items may be dropped","italic":false}]','[{"text":"-Shorty can only be bought ONCE","italic":false}]','[{"text":"-Make sure to keep this slot empty during the round","italic":false}]']}}
item replace entity @a inventory.1 with name_tag{display:{Name:'[{"text":"Shorty (x2)"}]',Lore:['[{"text":"Damage: 4 Hearts"}]','[{"text":"Rate of Fire: Preloaded"}]','[{"text":"Special: Shoots Multiple AOE Pellets"}]','[{"text":"Note: No reserve ammo"}]']}}
item replace entity @a inventory.10 with name_tag{display:{Name:'[{"text":"Sheriff"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Slow"}]']}}
item replace entity @a inventory.2 with name_tag{display:{Name:'[{"text":"Spectre"}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Fast"}]']}}
item replace entity @a inventory.11 with name_tag{display:{Name:'[{"text":"Judge"}]',Lore:['[{"text":"Damage: 2 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Shoots multiple AOE pellets"}]']}}
item replace entity @a inventory.3 with name_tag{display:{Name:'[{"text":"Bulldog"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots multiple arrows"}]']}}
item replace entity @a inventory.12 with name_tag{display:{Name:'[{"text":"Guardian"}]',Lore:['[{"text":"Damage: 4 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Does extra knockback towards opponents"}]']}}
item replace entity @a inventory.21 with name_tag{display:{Name:'[{"text":"Vandal"}]',Lore:['[{"text":"Damage: 5 Hearts"}]','[{"text":"Rate of Fire: Medium"}]','[{"text":"Special: Shoots AOE Rockets"}]']}}
item replace entity @a inventory.22 with name_tag{display:{Name:'[{"text":"Odin"}]',Lore:['[{"text":"Damage: 2.5 Hearts"}]','[{"text":"Rate of Fire: Very Fast"}]']}}
item replace entity @a inventory.4 with name_tag{display:{Name:'[{"text":"Marshall"}]',Lore:['[{"text":"Damage: 10 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']}}
item replace entity @a inventory.13 with name_tag{display:{Name:'[{"text":"Operator"}]',Lore:['[{"text":"Damage: 20 Hearts"}]','[{"text":"Rate of Fire: Very Slow"}]','[{"text":"Special: Penetrates through multiple enemies"}]']}}
item replace entity @a inventory.6 with name_tag{display:{Name:'[{"text":"Light Shield"}]',Lore:['[{"text":"Grants Extra 3 Hearts"}]','[{"text":"Only needs rebuy if you lose more than 8 hearts"}]']}}
item replace entity @a inventory.15 with name_tag{display:{Name:'[{"text":"Full Shield"}]',Lore:['[{"text":"Grants Extra 6 Hearts"}]','[{"text":"Only needs rebuy if you lose more than 8 hearts"}]']}}
item replace entity @a inventory.8 with name_tag{display:{Name:'[{"text":"Ability 1"}]',Lore:['[{"text":"Gives one charge on your first ability"}]']}}
item replace entity @a inventory.17 with name_tag{display:{Name:'[{"text":"Ability 2"}]',Lore:['[{"text":"Gives one charge on your second ability"}]']}}
item replace entity @a inventory.26 with name_tag{display:{Name:'[{"text":"Ability 3"}]',Lore:['[{"text":"Gives one charge on your third ability"}]']}}

#Refill ammo
clear @a tipped_arrow
clear @a bow{display:{Name:'[{"text":"Classic","italic":false,"color":"white"}]'}}
give @a bow{Unbreakable:1,display:{Name:'[{"text":"Classic","italic":false,"color":"white"}]',Lore:['[{"text":"Damage: 3 Hearts"}]','[{"text":"Rate of Fire: Slow"}]','[{"text":"Special: Minimum damage 1.2 hearts"}]']},Enchantments:[{id:"power",lvl:3}],HideFlags:1} 1
clear @a netherite_sword
give @a netherite_sword{Unbreakable:1,display:{Name:'[{"text":"Knife","italic":false}]',Lore:['[{"text":"In case of emergency..."}]']},Enchantments:[{id:"sharpness",lvl:10}]} 1

