tag @s add caster
execute if score @s additional_damage matches 4 run damage @e[tag=valid_target,tag=!caster,distance=..10,sort=nearest,limit=1] 12 ju:card_attack
execute if score @s additional_damage matches 0 run damage @e[tag=valid_target,tag=!caster,distance=..10,sort=nearest,limit=1] 8 ju:card_attack
function ju:logic/round_plus