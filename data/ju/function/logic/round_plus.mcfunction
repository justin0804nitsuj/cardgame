execute if score P1 health <= zero health run function ju:normal/end
execute if score P2 health <= zero health run function ju:normal/end
execute if score P2 health >= zero health run scoreboard players add round_checker round 1
execute if score P2 health >= zero health run execute if score round_checker round matches 3 run scoreboard players set round_checker round 1

execute if score round_checker round matches 1 if score P1 on_fire > zero health run damage @p[team=aqua] 4
execute if score round_checker round matches 1 if score P1 on_fire > zero health run scoreboard players remove P1 health 4
execute if score round_checker round matches 1 if score P1 on_fire > zero health run scoreboard players remove P1 on_fire 1
execute if score round_checker round matches 2 if score P2 on_fire > zero health run damage @p[team=red] 4
execute if score round_checker round matches 2 if score P2 on_fire > zero health run scoreboard players remove P2 health 4
execute if score round_checker round matches 2 if score P2 on_fire > zero health run scoreboard players remove P2 on_fire 1

execute if score P2 health >= zero health run execute if score round_checker round matches 1 run function ju:normal/deal
execute if score P2 health >= zero health run execute if score round_checker round matches 1 run tellraw @a {"text":"藍方回合!","color":"aqua"}
execute if score P2 health >= zero health run execute if score round_checker round matches 2 run tellraw @a {"text":"紅方回合!","color":"red"}