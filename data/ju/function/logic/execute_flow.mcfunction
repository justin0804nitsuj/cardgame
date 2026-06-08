# 此時的 @s 已經被 snapshot 精準修正為法定施法者 (可能是 P1玩家、P2玩家、或被重導向的村民沙包)

# 1. 讓 9 個展示框在各自的位置讀取物品並覆寫物件欄位
execute at @e[type=marker,tag=arena_center,distance=..10,sort=nearest,limit=1] as @e[type=glow_item_frame,tag=card_board,distance=..5] run function ju:logic/read_slot

# 2. 執行配方比對 (此時內部的 @s 施法者身分完全正確，caster 標籤將被精準貼附)
function ju:logic/check_recipes