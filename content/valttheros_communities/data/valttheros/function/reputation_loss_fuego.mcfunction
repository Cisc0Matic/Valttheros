scoreboard players remove @s reputation 1
tag @s add enemy_fuego
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Has atacado a Fuego Interior. Sus aliados te recordaran como enemigo.","color":"dark_red"}]
advancement revoke @s only valttheros:reputation/kill_fuego
