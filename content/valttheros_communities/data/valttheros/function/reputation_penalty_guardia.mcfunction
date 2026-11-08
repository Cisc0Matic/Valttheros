scoreboard players remove @s reputation 1
tag @s add enemy_guardia
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Guardia Real. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Guardia Real","color":"red"}',PersistenceRequired:1b,Tags:["hostile_guardia"]}
