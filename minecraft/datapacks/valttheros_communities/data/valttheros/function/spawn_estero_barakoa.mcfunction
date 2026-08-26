# ===========================
# Spawn Barakoa - Estero (X=500 Z=500)
# ===========================

# Tata Fawna - Lider Sabio (Barakoa Seer)
summon mowziesmobs:barakoa_seer 500 65 500 {CustomName:'{"translate":"npc.tata_fawna","fallback":"Tata Fawna","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["barakoa_npc","barakoa_leader"]}

# Guardia del Bosque (Barakoa Fury)
summon mowziesmobs:barakoa_fury 504 65 496 {CustomName:'{"translate":"npc.guardian_bosque","fallback":"Guardian del Bosque","color":"red"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["barakoa_npc","barakoa_guard"]}

# Joven Kael (Barakoa Horn)
summon mowziesmobs:barakoa_horn 496 65 504 {CustomName:'{"translate":"npc.joven_kael","fallback":"Joven Kael","color":"aqua"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["barakoa_npc","barakoa_young"]}

# Mensaje
tellraw @a {"text":"[Valttheros] La Tribu Barakoa ha sido convocada en Estero","color":"green"}
