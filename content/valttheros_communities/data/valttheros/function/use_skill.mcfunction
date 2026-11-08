scoreboard players set @s habilidad 0
scoreboard players set @s ability_cd 200
title @s title {"text":"Habilidad elemental","color":"gold"}
title @s subtitle {"text":"Usa /trigger habilidad para canalizarla","color":"yellow"}
execute if entity @s[tag=awakening_fuego] run function valttheros:skill_fuego
execute if entity @s[tag=awakening_agua] run function valttheros:skill_agua
execute if entity @s[tag=awakening_viento] run function valttheros:skill_viento
execute if entity @s[tag=awakening_piedra] run function valttheros:skill_piedra

