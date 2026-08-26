# ===========================
# Valttheros Communities - Tick
# ===========================

# Deteccion de proximidad - Barakoa (X=500 Z=500, radio 12 bloques)
execute as @a[tag=!barakoa_ally,tag=!barakoa_dialog] at @s if entity @s[x=488,y=50,z=488,dx=24,dy=20,dz=24] run function valttheros:npc_proximity_barakoa

# Deteccion de proximidad - Cultistas (X=520 Z=530, radio 12 bloques)
execute as @a[tag=!cultist_dialog] at @s if entity @s[x=508,y=30,z=518,dx=24,dy=20,dz=24] run function valttheros:npc_proximity_cultist

# Mantener NPCs vivos (respawn si fueron eliminados)
execute unless entity @e[tag=barakoa_npc,type=mowziesmobs:barakoa_seer] run function valttheros:spawn_estero_barakoa
execute unless entity @e[tag=cultist_npc,type=goety:warlock] run function valttheros:spawn_estero_cultist
