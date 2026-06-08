# 1. 初始化 Storage
data modify storage ju:temp board set value {slot_1:"minecraft:air",slot_2:"minecraft:air",slot_3:"minecraft:air",slot_4:"minecraft:air",slot_5:"minecraft:air",slot_6:"minecraft:air",slot_7:"minecraft:air",slot_8:"minecraft:air",slot_9:"minecraft:air"}

# ==================== 回合合法性驗證與身分導向 (精準指標版) ====================

# 【狀況一：當前為 P1 的回合】 點擊者為 p1 玩家，且場地 Marker 的 current_turn 分數為 1
execute if entity @s[tag=p1] at @s if score @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] current_turn matches 1 run function ju:logic/execute_flow

# 【狀況二：當前為 P2 的回合 - 雙人真實對戰】 點擊者為 p2 玩家，且場地 Marker 的 current_turn 分數為 2
execute if entity @s[tag=p2] at @s if score @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] current_turn matches 2 run function ju:logic/execute_flow

# 【狀況三：當前為 P2 的回合 - 單人村民測試】 點擊者為真人，場地 Marker 分數為 2，且對面有村民沙包。強制將執行主體（@s）切換為該村民沙包！
execute if entity @s[tag=!dummy] at @s if score @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] current_turn matches 2 if entity @e[type=villager,tag=p2,tag=dummy,distance=..15] as @e[type=villager,tag=p2,tag=dummy,distance=..15] run function ju:logic/execute_flow