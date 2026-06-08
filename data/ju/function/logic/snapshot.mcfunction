# 1. 初始化 Storage 數據結構為乾淨的空物件
data modify storage ju:temp board set value {slot_1:"minecraft:air",slot_2:"minecraft:air",slot_3:"minecraft:air",slot_4:"minecraft:air",slot_5:"minecraft:air",slot_6:"minecraft:air",slot_7:"minecraft:air",slot_8:"minecraft:air",slot_9:"minecraft:air"}

# ==================== 回合合法性驗證 (純真人雙人對戰版) ====================

# 【狀況一：當前為 P1 的回合】 點擊者必須為 p1 玩家，且場地 Marker 的 current_turn 分數為 1
execute if entity @s[tag=p1] at @s if score @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] current_turn matches 1 run function ju:logic/execute_flow

# 【狀況二：當前為 P2 的回合】 點擊者必須為 p2 玩家，且場地 Marker 的 current_turn 分數為 2
execute if entity @s[tag=p2] at @s if score @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] current_turn matches 2 run function ju:logic/execute_flow