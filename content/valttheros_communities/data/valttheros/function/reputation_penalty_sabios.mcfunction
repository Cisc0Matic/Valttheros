scoreboard players remove @s reputation 1
tag @s add enemy_sabios
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Sabios de La Docta. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Sabios de La Docta","color":"red"}',PersistenceRequired:1b,Tags:["hostile_sabios"]}
