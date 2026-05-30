title @a times 10 70 20
execute if score round_checker round matches 1 run title @p[team=aqua] title {"text":"我方生成了光明的未來","color":"white"}
execute if score round_checker round matches 1 run title @p[team=aqua] subtitle {"text":"我方獲得永久增益[生命上限+8與攻擊力+4]","color":"aqua"}

execute if score round_checker round matches 1 run title @p[team=red] title {"text":"敵方生成了光明的未來","color":"white"}
execute if score round_checker round matches 1 run title @p[team=red] subtitle {"text":"敵方獲得永久增益[生命上限+8與攻擊力+4]","color":"red"}

execute if score round_checker round matches 2 run title @p[team=red] title {"text":"我方生成了光明的未來","color":"white"}
execute if score round_checker round matches 2 run title @p[team=red] subtitle {"text":"我方獲得永久增益[生命上限+8與攻擊力+4]","color":"aqua"}

execute if score round_checker round matches 2 run title @p[team=aqua] title {"text":"敵方生成了光明的未來","color":"white"}
execute if score round_checker round matches 2 run title @p[team=aqua] subtitle {"text":"敵方獲得永久增益[生命上限+8與攻擊力+4]","color":"red"}