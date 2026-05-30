title @a times 10 70 20
execute if score round_checker round matches 1 run title @p[team=aqua] title {"text":"我方生成了金十字","color":"white"}
execute if score round_checker round matches 1 run title @p[team=aqua] subtitle {"text":"我方回復8點生命值","color":"aqua"}

execute if score round_checker round matches 1 run title @p[team=red] title {"text":"敵方生成了金十字","color":"white"}
execute if score round_checker round matches 1 run title @p[team=red] subtitle {"text":"敵方回復8點生命值","color":"red"}

execute if score round_checker round matches 2 run title @p[team=red] title {"text":"我方生成了金十字","color":"white"}
execute if score round_checker round matches 2 run title @p[team=red] subtitle {"text":"我方回復8點生命值","color":"aqua"}

execute if score round_checker round matches 2 run title @p[team=aqua] title {"text":"敵方生成了金十字","color":"white"}
execute if score round_checker round matches 2 run title @p[team=aqua] subtitle {"text":"敵方回復8點生命值","color":"red"}