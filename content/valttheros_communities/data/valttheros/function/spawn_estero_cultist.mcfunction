# ===========================
# Spawn Cultistas - Estero (X=520 Z=530)
# ===========================

# Sombras Veloz - Warlock Guardia
summon goety:warlock 520 45 530 {CustomName:'{"translate":"npc.sombras_veloz","fallback":"Sombras Veloz","color":"dark_purple","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["cultist_npc","cultist_warlock"]}

# Acolito del Fuego (Heretic)
summon goety:heretic 523 45 527 {CustomName:'{"translate":"npc.acolito_fuego","fallback":"Acolito del Fuego","color":"dark_red"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["cultist_npc","cultist_heretic"]}

# Mensaje
tellraw @a {"text":"[Valttheros] El Culto de la Llama se manifiesta en las ruinas de Estero","color":"dark_purple"}
