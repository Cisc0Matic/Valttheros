scoreboard players remove @s reputation 1
tag @s add enemy_mercaderes
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Mercaderes del Rio. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Mercaderes del Rio","color":"red"}',PersistenceRequired:1b,Tags:["hostile_mercaderes"]}
