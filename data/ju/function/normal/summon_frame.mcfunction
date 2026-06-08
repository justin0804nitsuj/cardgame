kill @e[type=glow_item_frame,tag=card_board]
kill @e[type=item]
kill @e[type= minecraft:marker,tag=arena_center]
kill @e[type= minecraft:armor_stand,tag=armor_stand]

# 1. 建立永久的場地錨點 (取代我們剛才用的生成蛋 Marker)
summon marker ~ ~ ~ {Tags:["arena_center"]}

# 2. 展開九宮格展示框 (Facing:1b 代表朝上平放)
# summon_frame.mcfunction 應改為相對座標，並給予特定 Tag
summon glow_item_frame ~1 ~ ~1 {Tags:["card_board","slot_1"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~ ~ ~1 {Tags:["card_board","slot_2"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~-1 ~ ~1 {Tags:["card_board","slot_3"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~1 ~ ~ {Tags:["card_board","slot_4"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~ ~ ~ {Tags:["card_board","slot_5"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~-1 ~ ~ {Tags:["card_board","slot_6"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~1 ~ ~-1 {Tags:["card_board","slot_7"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~ ~ ~-1 {Tags:["card_board","slot_8"],Facing:1b,Invulnerable:1b}
summon glow_item_frame ~-1 ~ ~-1 {Tags:["card_board","slot_9"],Facing:1b,Invulnerable:1b}

summon minecraft:armor_stand ~1 ~-2.3 ~1 {Tags:["armor_stand","slot_1"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"1",bold:true}}
summon minecraft:armor_stand ~ ~-2.3 ~1 {Tags:["armor_stand","slot_2"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"2",bold:true}}
summon minecraft:armor_stand ~-1 ~-2.3 ~1 {Tags:["armor_stand","slot_3"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"3",bold:true}}
summon minecraft:armor_stand ~1 ~-2.3 ~ {Tags:["armor_stand","slot_4"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"4",bold:true}}
summon minecraft:armor_stand ~ ~-2.3 ~ {Tags:["armor_stand","slot_5"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"5",bold:true}}
summon minecraft:armor_stand ~-1 ~-2.3 ~ {Tags:["armor_stand","slot_6"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"6",bold:true}}
summon minecraft:armor_stand ~1 ~-2.3 ~-1 {Tags:["armor_stand","slot_7"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"7",bold:true}}
summon minecraft:armor_stand ~ ~-2.3 ~-1 {Tags:["armor_stand","slot_8"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"8",bold:true}}
summon minecraft:armor_stand ~-1 ~-2.3 ~-1 {Tags:["armor_stand","slot_9"],Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:{text:"9",bold:true}}

# 3. 部署完成後，將觸發用的生成蛋 Marker 刪除，避免重複執行
kill @s