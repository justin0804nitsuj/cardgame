execute if score round_checker round matches 1 run effect give @p[team=aqua] instant_health 1 1 false
execute if score round_checker round matches 1 if score P1 health <= twelve health run scoreboard players add P1 health 8
execute if score round_checker round matches 1 if score P1 max_health matches 20 if score P1 health > twelve health run scoreboard players set P1 health 20
execute if score round_checker round matches 1 if score P1 max_health > twenty health if score P1 health > twenty health run scoreboard players set P1 health 28
execute if score round_checker round matches 1 if score P1 max_health > twenty health if score P1 health <= twenty health run scoreboard players add P1 health 8

execute if score round_checker round matches 2 run effect give @p[team=red] instant_health 1 1 false
execute if score round_checker round matches 2 if score P2 health <= twelve health run scoreboard players add P2 health 8
execute if score round_checker round matches 2 if score P2 max_health matches 20 if score P2 health > twelve health run scoreboard players set P2 health 20
execute if score round_checker round matches 2 if score P2 max_health > twenty health if score P2 health > twenty health run scoreboard players set P2 health 28
execute if score round_checker round matches 2 if score P2 max_health > twenty health if score P2 health <= twenty health run scoreboard players add P2 health 8

function ju:logic/round_plus
#if score P1 max_health > twenty health 