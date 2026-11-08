scoreboard players remove @s reputation 1
tag @s add enemy_wizards
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Has atacado a Sabios de La Docta. Sus aliados te recordaran como enemigo.","color":"dark_red"}]
advancement revoke @s only valttheros:reputation/kill_wizards
