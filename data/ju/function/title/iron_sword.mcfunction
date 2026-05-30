title @a times 10 70 20
execute if score round_checker round matches 1 run title @p[team=aqua] title {"text":"我方生成了鐵劍","color":"white"}
execute if score round_checker round matches 1 run title @p[team=aqua] subtitle {"text":"對敵人造成6點傷害","color":"aqua"}

execute if score round_checker round matches 1 run title @p[team=red] title {"text":"敵方生成了鐵劍","color":"white"}
execute if score round_checker round matches 1 run title @p[team=red] subtitle {"text":"對我方造成6點傷害","color":"red"}

execute if score round_checker round matches 2 run title @p[team=red] title {"text":"我方生成了鐵劍","color":"white"}
execute if score round_checker round matches 2 run title @p[team=red] subtitle {"text":"對敵人造成6點傷害","color":"aqua"}

execute if score round_checker round matches 2 run title @p[team=aqua] title {"text":"敵方生成了鐵劍","color":"white"}
execute if score round_checker round matches 2 run title @p[team=aqua] subtitle {"text":"對我方造成6點傷害","color":"red"}