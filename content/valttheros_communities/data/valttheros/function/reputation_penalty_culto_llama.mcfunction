scoreboard players remove @s reputation 1
tag @s add enemy_culto_llama
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Atacaste a Culto de la Llama. Sus aliados ahora te consideran enemigo.","color":"dark_red"}]
execute at @s run summon minecraft:pillager ~8 ~ ~8 {CustomName:'{"text":"Justiciero de Culto de la Llama","color":"red"}',PersistenceRequired:1b,Tags:["hostile_culto_llama"]}
