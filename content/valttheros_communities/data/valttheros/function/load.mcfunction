scoreboard objectives add bienvenida_valttheros dummy
scoreboard objectives add first_join_valttheros dummy
scoreboard objectives add valttheros_init dummy
scoreboard objectives add community dummy
scoreboard objectives add reputation dummy
scoreboard objectives add awakening_roll dummy
scoreboard objectives add intro_cinema_delay dummy
scoreboard objectives add spawn_repair dummy
execute unless score #ready valttheros_init matches 1 run function valttheros:bootstrap
execute unless score #ready spawn_repair matches 1 run function valttheros:repair_spawn
