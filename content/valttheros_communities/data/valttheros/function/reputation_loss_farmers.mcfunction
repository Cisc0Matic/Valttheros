scoreboard players remove @s reputation 1
tag @s add enemy_farmers
tellraw @s [{"text":"[Reputacion] ","color":"red"},{"text":"Has atacado a Agricultores del Norte. Sus aliados te recordaran como enemigo.","color":"dark_red"}]
advancement revoke @s only valttheros:reputation/kill_farmers
