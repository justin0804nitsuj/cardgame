# 生成一個假石頭掉落物 (此時執行點 at @s 已經在該展示框身上)
summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["refund_target"]}

# 將展示框的物品 NBT 複製給該掉落物 (放寬距離至 1 格，避免碰撞箱擠壓導致抓不到)
data modify entity @e[type=item,tag=refund_target,distance=..1,sort=nearest,limit=1] Item set from entity @s Item

# 移除掉落物的標籤
tag @e[type=item,tag=refund_target,distance=..1,limit=1] remove refund_target

# 清空此展示框
item replace entity @s container.0 with air