scoreboard players remove @s reputation 1
tag @s add enemy_fuego_interior
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Fuego Interior. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Fuego Interior","color":"red"}',PersistenceRequired:1b,Tags:["hostile_fuego_interior"]}
