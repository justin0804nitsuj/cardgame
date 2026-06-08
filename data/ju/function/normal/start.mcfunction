# 1. 清理場地上殘留的舊測試沙包
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run kill @e[tag=dummy,distance=..15]

# 2. 給予範圍內真實玩家標籤 (排除盔甲架與掉落物)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @a[distance=..15] add valid_target
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @s add game_active

# 3. 傳送真實玩家到一側 (設定為 p1)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @a[tag=valid_target,distance=..15,limit=1,sort=nearest] run tag @s add p1
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tp @a[tag=p1,distance=..15] ~ ~ ~3 facing ~ ~ ~

# 4. 在另一側生成村民測試沙包 (設定為 p2)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run summon villager ~ ~ ~-3 {Tags:["valid_target","dummy","p2"],NoAI:1b,Silent:1b,CustomName:'"測試沙包"',CustomNameVisible:1b,Rotation:[0f,0f]}

# 5. 廣播、狀態重置與給予工具
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tellraw @a[distance=..15] {"text":"歡迎來到卡牌競技場","color":"aqua"}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run title @a[distance=..15] title {"text":"戰鬥開始!"}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run clear @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run effect clear @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run effect give @a[distance=..15] instant_health 1 99 true
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run gamemode adventure @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run give @a[distance=..15] carrot_on_a_stick[item_name='"收回盤面物品"'] 1

# 6. 初始化雙方 (玩家與村民) 的戰鬥分數 (排除盔甲架)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @e[tag=valid_target,type=!armor_stand,distance=..15] additional_damage 0
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @e[tag=valid_target,type=!armor_stand,distance=..15] on_fire 0
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run damage @e[tag=valid_target,type=!armor_stand,distance=..15,limit=1] 1

# 7. 初始發放手牌與【核心回合鎖在地化】
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run function ju:normal/deal

# 必須使用 as 讓中心點 Marker 成為分數的正式載體，且將回合計數初始化為 0
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @s round_count 0
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @s current_turn 1