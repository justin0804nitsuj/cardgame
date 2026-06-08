tag @s add caster
execute as @e[tag=valid_target,tag=!caster,distance=..15,limit=1,sort=nearest] run scoreboard players add @s on_fire 2
function ju:logic/round_plus