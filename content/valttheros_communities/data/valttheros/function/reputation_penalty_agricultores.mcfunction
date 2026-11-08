scoreboard players remove @s reputation 1
tag @s add enemy_agricultores
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Agricultores del Norte. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Agricultores del Norte","color":"red"}',PersistenceRequired:1b,Tags:["hostile_agricultores"]}
