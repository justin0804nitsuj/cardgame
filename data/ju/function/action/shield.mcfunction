execute if score round_checker round matches 1 run effect give @p[team=aqua] absorption infinite 4 false
execute if score round_checker round matches 1 run scoreboard players set P1 shield 20
execute if score round_checker round matches 2 run effect give @p[team=red] absorption infinite 4 false
execute if score round_checker round matches 2 run scoreboard players set P2 shield 20
function ju:logic/round_plus