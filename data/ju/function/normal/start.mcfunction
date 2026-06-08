# 1. 清除舊有的戰鬥與玩家狀態
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @a[distance=..15] remove valid_target
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @a[distance=..15] remove p1
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @a[distance=..15] remove p2

# 2. 將範圍內的真實玩家標記為合法目標與場地啟用狀態 (排除盔甲架)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @a[distance=..15] add valid_target
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tag @s add game_active

# 3. 動態指派 P1 與 P2 真實玩家 (依距離排序，抓最近的兩個真人玩家)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @a[tag=valid_target,distance=..15,limit=1,sort=nearest] run tag @s add p1
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @a[tag=valid_target,tag=!p1,distance=..15,limit=1,sort=nearest] run tag @s add p2

# 4. 傳送雙方真實玩家至各自的陣地
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tp @a[tag=p1,distance=..15] ~ ~ ~3 facing ~ ~ ~
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tp @a[tag=p2,distance=..15] ~ ~ ~-3 facing ~ ~ ~

# 5. 廣播、狀態重置與給予工具
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tellraw @a[distance=..15] {"text":"歡迎來到卡牌競技場","color":"aqua"}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run title @a[distance=..15] title {"text":"戰鬥開始!"}
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run clear @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run effect clear @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run effect give @a[distance=..15] instant_health 1 99 true
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run gamemode adventure @a[distance=..15]
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run give @a[distance=..15] carrot_on_a_stick[item_name='"收回盤面物品"'] 1

# 6. 初始化雙方玩家的戰鬥分數
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @a[tag=valid_target,distance=..15] additional_damage 0
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @a[tag=valid_target,distance=..15] on_fire 0
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run damage @a[tag=valid_target,distance=..15,limit=1] 1

# 7. 初始發牌與回合鎖定在地化 (由場地 Marker 作為分數載體，開局為第 0 回合)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run function ju:normal/deal
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @s round_count 0
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players set @s current_turn 1