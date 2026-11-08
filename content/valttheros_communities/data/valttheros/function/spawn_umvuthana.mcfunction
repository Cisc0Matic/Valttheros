# ===========================
# Spawn Umvuthana - Misiones (X=688 Z=-62)
# Nueva raza: tribu de la selva, distinta a los Barakoa del Estero
# ===========================

# Jefa Nandi (Umvuthana)
summon mowziesmobs:umvuthana 688 65 -62 {CustomName:'{"translate":"npc.jefa_nandi","fallback":"Jefa Nandi","color":"dark_green","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["umvuthana_npc","umvuthana_leader"]}

# Guerrero Thaba (Umvuthana)
summon mowziesmobs:umvuthana 692 65 -58 {CustomName:'{"translate":"npc.guerrero_thaba","fallback":"Guerrero Thaba","color":"green"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["umvuthana_npc","umvuthana_guard"]}

# Explorador Sipho (Umvuthana Crane)
summon mowziesmobs:umvuthana_crane 684 65 -66 {CustomName:'{"translate":"npc.explorador_sipho","fallback":"Explorador Sipho","color":"yellow"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["umvuthana_npc","umvuthana_young"]}

# Mensaje
tellraw @a {"text":"[Valttheros] La Tribu Umvuthana ha sido convocada en Misiones","color":"green"}
