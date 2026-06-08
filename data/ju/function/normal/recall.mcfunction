# 1. 尋找附近場地，並只對「確實有物品」的展示框，在該展示框的座標呼叫退還函式
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @e[type=glow_item_frame,tag=card_board,distance=..5] at @s if data entity @s Item.id run function ju:normal/refund_single

# 2. 播放音效與粒子效果給予玩家回饋 (這兩行完全沒問題，保留即可)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run particle minecraft:poof ~ ~0.5 ~ 1 0.2 1 0.1 20 force