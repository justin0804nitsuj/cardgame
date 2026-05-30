execute if score round_checker round matches 1 run effect give @p[team=aqua] health_boost infinite 1 false
execute if score round_checker round matches 1 run effect give @p[team=aqua] strength infinite 1 false
execute if score round_checker round matches 1 run scoreboard players add P1 max_health 8
execute if score round_checker round matches 1 run scoreboard players add P1 additional_damage 4

execute if score round_checker round matches 2 run effect give @p[team=red] health_boost infinite 1 false
execute if score round_checker round matches 2 run effect give @p[team=red] strength infinite 1 false
execute if score round_checker round matches 2 run scoreboard players add P2 max_health 8
execute if score round_checker round matches 2 run scoreboard players add P2 additional_damage 4
function ju:logic/round_plus