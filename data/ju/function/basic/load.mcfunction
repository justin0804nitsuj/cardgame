# --- 1. 系統運作核心計分板 ---
scoreboard objectives add delay_tick dummy "延遲處理"
scoreboard objectives add click_recall used:carrot_on_a_stick "蘿蔔釣竿點擊"
scoreboard objectives add random_ID dummy "發牌隨機數"
scoreboard objectives add craft_item dummy "製作物品"
scoreboard objectives add round_count dummy "回合計數器"
scoreboard players reset @e round_count
# 儲存當前是由哪一方控制出牌 (1=P1, 2=P2)
scoreboard objectives add current_turn dummy "當前回合方"

# --- 2. 勝負判定計分板 ---
scoreboard objectives add death_count deathCount "死亡次數"
scoreboard objectives add alive_players dummy "存活人數"

# --- 3. 玩家真實血量顯示 (Tab列表) ---
scoreboard objectives add player_health health "生命值"
scoreboard objectives modify player_health rendertype hearts
scoreboard objectives setdisplay list player_health

# --- 4. 戰鬥增益與減益狀態 ---
scoreboard objectives add additional_damage dummy "額外傷害"
scoreboard objectives add on_fire dummy "著火層數"

# --- 5. 系統常數初始化 ---
scoreboard players reset crafter craft_item
scoreboard players reset randomer random_ID

# --- 6. 載入完成提示 ---
effect clear @a
tellraw @a {"text":"[系統] 卡牌對戰資料包已成功重新載入！","color":"aqua","bold":true}