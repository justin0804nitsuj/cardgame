title @a times 10 70 20
execute if score round_checker round matches 1 run title @p[team=aqua] title {"text":"我方生成了煤炭","color":"white"}
execute if score round_checker round matches 1 run title @p[team=aqua] subtitle {"text":"coal block打開[我方獲得1煤炭方塊]","color":"aqua"}

execute if score round_checker round matches 1 run title @p[team=red] title {"text":"敵方生成了煤炭","color":"white"}
execute if score round_checker round matches 1 run title @p[team=red] subtitle {"text":"對手真是猜不透[對手獲得1煤炭方塊]","color":"red"}

execute if score round_checker round matches 2 run title @p[team=red] title {"text":"我方生成了煤炭","color":"white"}
execute if score round_checker round matches 2 run title @p[team=red] subtitle {"text":"coal block打開[我方獲得1煤炭方塊]","color":"aqua"}

execute if score round_checker round matches 2 run title @p[team=aqua] title {"text":"敵方生成了煤炭","color":"white"}
execute if score round_checker round matches 2 run title @p[team=aqua] subtitle {"text":"對手真是猜不透[對手獲得1煤炭方塊]","color":"red"}