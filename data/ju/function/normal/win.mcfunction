# 動態宣告最後存活者的名字
tellraw @a[distance=..15] ["",{"selector":"@e[tag=valid_target,distance=..15,limit=1]"},{"text":" 贏得了這場對戰！","color":"gold","bold":true}]
title @a[distance=..15] title {"text":"戰鬥結束！","color":"green"}

# 呼叫結算重置
function ju:normal/end