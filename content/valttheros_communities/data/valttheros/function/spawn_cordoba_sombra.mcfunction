# ===========================
# Spawn La Sombra - Cordoba (X=-900 Z=500)
# ===========================

# El Innombrable (Goety warlock)
summon goety:warlock -900 65 500 {CustomName:'{"translate":"npc.el_innombrable","fallback":"El Innombrable","color":"dark_purple","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["sombra_npc","sombra_leader"]}

# Mensajero Enmascarado (Goety warlock)
summon goety:warlock -896 65 504 {CustomName:'{"translate":"npc.mensajero_enmascarado","fallback":"Mensajero Enmascarado","color":"dark_gray"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["sombra_npc","sombra_messenger"]}

# Mensaje
tellraw @a {"text":"[Valttheros] La Sombra ha sido convocada en los subterraneos de Cordoba","color":"dark_purple"}
