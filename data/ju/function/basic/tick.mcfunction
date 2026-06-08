# 1. 偵測生成蛋並召喚盤面
execute as @e[type=marker,tag=deploy_board] at @s run function ju:normal/summon_frame

# 偵測玩家右鍵點擊蘿蔔釣竿，以玩家自身為中心呼叫 recall
execute as @a[scores={click_recall=1..}] at @s run function ju:normal/recall
# 執行完畢後重置分數
execute as @a[scores={click_recall=1..}] run scoreboard players reset @s click_recall

# 2. 處理玩家點擊後的 1 tick 延遲快照
execute as @a[scores={delay_tick=1}] run scoreboard players remove @s delay_tick 1
execute as @a[scores={delay_tick=0}] at @s run function ju:logic/snapshot
execute as @a[scores={delay_tick=0}] run scoreboard players reset @s delay_tick

# --- 勝負判定系統 ---

# 1. 玩家死亡瞬間，立刻剝奪其有效目標身分，並重置死亡次數
execute as @a[scores={death_count=1..}] run tag @s remove valid_target
execute as @a[scores={death_count=1..}] run scoreboard players reset @s death_count

# 2. 讓所有「戰鬥中」的場地，計算範圍內還剩下幾個有效目標 (硬性剔除盔甲架)
execute as @e[type=marker,tag=arena_center,tag=game_active] store result score @s alive_players if entity @e[tag=valid_target,type=!armor_stand,distance=..15]

# 3. 判斷勝負條件 (由場地中心點執行)
execute as @e[type=marker,tag=arena_center,tag=game_active,scores={alive_players=1}] at @s run function ju:normal/win
execute as @e[type=marker,tag=arena_center,tag=game_active,scores={alive_players=0}] at @s run function ju:normal/draw