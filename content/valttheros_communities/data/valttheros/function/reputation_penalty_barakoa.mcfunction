scoreboard players remove @s reputation 1
tag @s add enemy_barakoa
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Tribu Barakoa. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Tribu Barakoa","color":"red"}',PersistenceRequired:1b,Tags:["hostile_barakoa"]}
