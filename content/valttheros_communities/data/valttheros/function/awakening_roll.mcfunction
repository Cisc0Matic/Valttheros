execute store result score @s awakening_roll run random value 1..6
execute if score @s awakening_roll matches 1 run awakened power give @s geokinetic
execute if score @s awakening_roll matches 2 run awakened power give @s hydrokinetic
execute if score @s awakening_roll matches 3 run awakened power give @s cryokinetic
execute if score @s awakening_roll matches 4 run awakened power give @s aerokinetic
execute if score @s awakening_roll matches 5 run awakened power give @s pyrokinetic
execute if score @s awakening_roll matches 6 run awakened power give @s storm_caller
scoreboard players set @s awakening_roll 0
title @s title {"text":"Poder despertado","color":"light_purple"}
title @s subtitle {"text":"Tu afinidad elemental ha sido elegida","color":"aqua"}
function valttheros:intro_cinematic
