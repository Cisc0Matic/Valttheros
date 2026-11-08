# ===========================
# Bienvenida al Pueblo Valttheros
# Llamado desde tick.mcfunction solo mientras
# bienvenida_valttheros no valga 1 (una vez por jugador)
# ===========================

tellraw @s [{"text":"[Valttheros] ¡Bienvenido a Puerto Valttheros!","color":"gold","bold":true,"extra":[{"text":" ¡Explora seis regiones y habla con las comunidades!","color":"green"}]}]
scoreboard players set @s bienvenida_valttheros 1
