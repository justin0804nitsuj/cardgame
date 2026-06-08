# 1. 拔除場地的戰鬥狀態
tag @s remove game_active

# 2. 拔除範圍內所有玩家的合法目標標籤
tag @a[distance=..15] remove valid_target

# 3. 清除場地上的測試用沙包 (若有使用單人測試)
kill @e[tag=dummy,distance=..15]

# 4. 回收發放的蘿蔔釣竿或其他對戰用道具
clear @a[distance=..15] minecraft:carrot_on_a_stick

# 5. 滿血復活死去的玩家 (若玩家處於死亡畫面，按下重生後依然會被補滿)
effect give @a[distance=..15] instant_health 1 99 true

tag @a remove p1
tag @a remove p2
tag @e[tag=dummy] remove p1
tag @e[tag=dummy] remove p2