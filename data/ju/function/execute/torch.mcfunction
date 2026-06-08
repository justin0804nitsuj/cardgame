# 設定 craft_item 變數
scoreboard players set crafter craft_item 6

# 延遲 15 tick 後觸發動畫與結算
schedule function ju:normal/craft 15t

# 清除盤面 (使用新版相對座標的精準清除)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @e[type=glow_item_frame,tag=card_board,distance=..5] run item replace entity @s container.0 with air