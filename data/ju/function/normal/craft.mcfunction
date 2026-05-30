particle totem_of_undying 2 -60 6 2 2 2 0.5 100 force
playsound block.anvil.place master @a 2 -60 6 0.5
#加這區
execute if score crafter craft_item matches 1 run summon item 2 -60 6 {Item:{id:"minecraft:iron_sword",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 1 run function ju:title/iron_sword
execute if score crafter craft_item matches 2 run summon item 2 -60 6 {Item:{id:"minecraft:diamond_sword",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 2 run function ju:title/diamond_sword
execute if score crafter craft_item matches 3 run summon item 2 -60 6 {Item:{id:"minecraft:shield",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 3 run function ju:title/shield
execute if score crafter craft_item matches 4 run summon item 2 -60 6 {Item:{id:"minecraft:gold_ingot",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 4 run function ju:title/gold_cross
execute if score crafter craft_item matches 5 run summon item 2 -60 6 {Item:{id:"minecraft:coal_block",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 5 run function ju:title/coal_block
execute if score crafter craft_item matches 6 run summon item 2 -60 6 {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 6 run function ju:title/torch
execute if score crafter craft_item matches 7 run summon item 2 -60 6 {Item:{id:"minecraft:fire_charge",count:1},PickupDelay:32767,Age:-32768}
execute if score crafter craft_item matches 7 run function ju:title/fire_charge
schedule function ju:normal/kill_item 55t