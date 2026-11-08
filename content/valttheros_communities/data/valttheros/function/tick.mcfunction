execute as @a unless entity @s[tag=valttheros_character_created] run function valttheros:first_join
execute as @a[tag=valttheros_character_created,tag=!lineage_nacar,tag=!lineage_pedraluz,tag=!lineage_silvano,tag=!valttheros_character_prompted] run function valttheros:resume_character_creation
execute as @a[tag=valttheros_character_created,tag=!lineage_nacar,tag=!lineage_pedraluz,tag=!lineage_silvano] run effect give @s minecraft:resistance 1 4 true
execute as @a[tag=valttheros_character_created,tag=!lineage_nacar,tag=!lineage_pedraluz,tag=!lineage_silvano] run effect give @s minecraft:water_breathing 1 0 true
execute as @a[tag=valttheros_character_created,tag=!lineage_nacar,tag=!lineage_pedraluz,tag=!lineage_silvano] run effect give @s minecraft:fire_resistance 1 0 true
execute as @a[tag=valttheros_character_created,tag=!lineage_nacar,tag=!lineage_pedraluz,tag=!lineage_silvano] run effect give @s minecraft:slow_falling 1 0 true
execute as @a[scores={intro_cinema_delay=1}] run function valttheros:awakening_tutorial
execute as @a[scores={intro_cinema_delay=1..}] run scoreboard players remove @s intro_cinema_delay 1
