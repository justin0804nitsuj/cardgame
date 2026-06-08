execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run particle totem_of_undying ~ ~ ~ 2 2 2 0.5 100 force
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run playsound block.anvil.place master @a ~ ~ ~ 0.5

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 1 run function ju:title/iron_sword

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 2 run function ju:title/diamond_sword

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:shield",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 3 run function ju:title/shield

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 4 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 4 run function ju:title/gold_cross

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 5 run summon item ~ ~ ~ {Item:{id:"minecraft:coal_block",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 5 run function ju:title/coal_block

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 6 run summon item ~ ~ ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 6 run function ju:title/torch

execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 7 run summon item ~ ~ ~ {Item:{id:"minecraft:fire_charge",count:1},PickupDelay:32767,Age:-32768}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score crafter craft_item matches 7 run function ju:title/fire_charge

schedule function ju:normal/kill_item 55t