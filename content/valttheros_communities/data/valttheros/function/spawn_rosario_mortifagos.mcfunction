# ===========================
# Spawn Mortifagos del Rio - Rosario (X=320 Z=-800)
# ===========================

# El Capitan Muerto (Goety heresiarch)
summon goety:heresiarch 320 62 -800 {CustomName:'{"translate":"npc.capitan_muerto","fallback":"El Capitan Muerto","color":"gray","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["mortifago_npc","mortifago_leader"]}

# Sacerdote del Rio (Goety warlock)
summon goety:warlock 324 62 -804 {CustomName:'{"translate":"npc.sacerdote_rio","fallback":"Sacerdote del Rio","color":"dark_gray"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["mortifago_npc","mortifago_priest"]}

# Mensaje
tellraw @a {"text":"[Valttheros] Los Mortifagos del Rio han sido convocados en las islas del Parana","color":"gray"}
