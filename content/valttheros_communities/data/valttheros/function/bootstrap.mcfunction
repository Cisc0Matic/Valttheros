scoreboard players set #ready valttheros_init 1
team add players "Jugadores"
team modify players color green
setworldspawn 500 100 500
execute positioned 520 0 530 positioned over world_surface run place template valttheros:settlements/culto_llama ~-16 ~ ~-16
execute positioned 1000 0 -300 positioned over world_surface run place template valttheros:settlements/agricultores ~-16 ~ ~-16
execute positioned 1100 0 -400 positioned over world_surface run place template valttheros:settlements/fuego_interior ~-16 ~ ~-16
execute positioned -800 0 600 positioned over world_surface run place template valttheros:settlements/sabios ~-16 ~ ~-16
execute positioned -900 0 500 positioned over world_surface run place template valttheros:settlements/sombra ~-16 ~ ~-16
execute positioned 300 0 -700 positioned over world_surface run place template valttheros:settlements/mercaderes ~-16 ~ ~-16
execute positioned 320 0 -800 positioned over world_surface run place template valttheros:settlements/mortifagos ~-16 ~ ~-16
execute positioned 0 0 80 positioned over world_surface run place template valttheros:settlements/guardia ~-16 ~ ~-16
execute positioned 688 0 -54 positioned over world_surface run place template valttheros:settlements/umvuthana ~-16 ~ ~-16
function valttheros:spawn_estructuras
function valttheros:spawn_waystones
tellraw @a {"text":"[Valttheros] El camino se abre ante vos. Busca las comunidades y decide en quien confiar.","color":"gold","bold":true}
