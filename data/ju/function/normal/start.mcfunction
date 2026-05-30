tp @p[team=aqua] 2 -60 9 facing 2 -60 8
tp @p[team=red] 2 -60 3 facing 2 -60 4
tellraw @a {"text":"歡迎來到卡牌競技場","color":"aqua"}
title @a title {"text":"戰鬥開始!"}
scoreboard players set P1 health 20
scoreboard players set P2 health 20
scoreboard players set P1 max_health 20
scoreboard players set P2 max_health 20
damage @p[team=aqua] 1
damage @p[team=red] 1
effect give @a instant_health 1 99 true
clear @a
effect clear @a
effect give @a instant_health 1 99 true
gamemode adventure @a
function ju:logic/round_plus