# 1. 執行持續性傷害結算 (剔除盔甲架)
execute as @e[tag=valid_target,type=!armor_stand,tag=!caster,distance=..15,scores={on_fire=1..}] run damage @s 4 ju:card_attack
execute as @e[tag=valid_target,type=!armor_stand,tag=!caster,distance=..15,scores={on_fire=1..}] run scoreboard players remove @s on_fire 1

# 2. 動態播報對手回合開始 (剔除盔甲架)
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run tellraw @a[distance=..15] ["\n",{"text":">>> ","color":"yellow"},{"selector":"@e[tag=valid_target,type=!armor_stand,tag=!caster,distance=..15,limit=1]"},{"text":" 的回合開始！","color":"green","bold":true}]

# ==================== 3. 回合計數與奇數大回合全場補牌 ====================

# 必須用 as 讓 Marker 累加自己的 round_count
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players add @s round_count 1
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score @s round_count matches 3 run scoreboard players set @s round_count 1

# 如果 Marker 的 round_count 是 1 (代表第 1 次出牌結束)，全場法定目標(不含盔甲架)抽 4 張牌
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score @s round_count matches 1 as @e[tag=valid_target,type=!armor_stand,distance=..15] run function ju:dealing/random_card
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score @s round_count matches 1 as @e[tag=valid_target,type=!armor_stand,distance=..15] run function ju:dealing/random_card
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score @s round_count matches 1 as @e[tag=valid_target,type=!armor_stand,distance=..15] run function ju:dealing/random_card
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score @s round_count matches 1 as @e[tag=valid_target,type=!armor_stand,distance=..15] run function ju:dealing/random_card

# ==================== 4. 戰鬥使用權翻轉機制 ====================

# 必須用 as 讓 Marker 將自己的 current_turn 備份給全域虛擬玩家
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] run scoreboard players operation #temp_turn delay_tick = @s current_turn

# 依據備份，翻轉 Marker 自己的 current_turn 分數 (1 變 2，2 變 1)
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score #temp_turn delay_tick matches 1 run scoreboard players set @s current_turn 2
execute as @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] if score #temp_turn delay_tick matches 2 run scoreboard players set @s current_turn 1