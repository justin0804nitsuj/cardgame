scoreboard objectives add health dummy "生命值"
scoreboard objectives add round dummy "回合數"
scoreboard objectives add which_turn dummy "誰的回合"
scoreboard objectives add if_played dummy "本回合是否已出牌"
scoreboard objectives add craft_item dummy "製作物品"
scoreboard objectives add max_health dummy "最大生命值"
scoreboard objectives add shield dummy "護盾值"
scoreboard objectives add additional_damage dummy "額外傷害"
scoreboard objectives add player_health health "玩家生命值"
scoreboard objectives modify player_health rendertype hearts
scoreboard objectives setdisplay list player_health
scoreboard objectives add on_fire dummy "是否著火"

scoreboard players set P1 health 20
scoreboard players set P2 health 20
scoreboard players set round_checker round 0
scoreboard players reset crafter craft_item 

item replace entity @e[type=glow_item_frame] container.0 with air
effect clear @a
tellraw @a {"text":"已重新載入!","color":"aqua"}
scoreboard objectives add random_ID dummy "隨機數"
scoreboard players reset randomer random_ID
team empty aqua
team empty red
team add aqua
team add red
team join aqua @r
team join red @p[team=]
team modify aqua color aqua
team modify red color red
scoreboard players set zero health 0
scoreboard players set P1 max_health 20
scoreboard players set P2 max_health 20
scoreboard players set twelve health 12
scoreboard players set P1 shield 0
scoreboard players set P2 shield 0
scoreboard players set six health 6
scoreboard players set eight health 8
scoreboard players set ten health 10
scoreboard players set forteen health 14
scoreboard players set twenty health 20
scoreboard players set P1 additional_damage 0
scoreboard players set P2 additional_damage 0
scoreboard players set P1 on_fire 0
scoreboard players set P2 on_fire 0