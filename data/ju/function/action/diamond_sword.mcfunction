execute if score round_checker round matches 1 if score P1 additional_damage matches 4 run damage @p[team=red] 12
execute if score round_checker round matches 1 if score P1 additional_damage matches 0 run damage @p[team=red] 8
execute if score round_checker round matches 1 if score P1 additional_damage matches 4 run scoreboard players operation P2 shield -= twelve health
execute if score round_checker round matches 1 if score P1 additional_damage matches 0 run scoreboard players operation P2 shield -= eight health
execute if score round_checker round matches 1 run execute if score P2 shield < zero health run scoreboard players operation P2 health += P2 shield
execute if score round_checker round matches 1 if score P2 shield < zero health run scoreboard players set P2 shield 0

execute if score round_checker round matches 2 if score P2 additional_damage matches 4 run damage @p[team=aqua] 12
execute if score round_checker round matches 2 if score P2 additional_damage matches 0 run damage @p[team=aqua] 8
execute if score round_checker round matches 2 if score P2 additional_damage matches 4 run scoreboard players operation P1 shield -= twelve health
execute if score round_checker round matches 2 if score P2 additional_damage matches 0 run scoreboard players operation P1 shield -= eight health
execute if score round_checker round matches 2 run execute if score P1 shield < zero health run scoreboard players operation P1 health += P1 shield
execute if score round_checker round matches 2 if score P1 shield < zero health run scoreboard players set P1 shield 0
function ju:logic/round_plus