# ===========================
# Spawn Fuego Interior - Tucuman (X=1100 Z=-400)
# ===========================

# Sumo Sacerdote Ignes (Goety heresiarch)
summon goety:heresiarch 1100 65 -400 {CustomName:'{"translate":"npc.sumo_sacerdote","fallback":"Sumo Sacerdote Ignes","color":"dark_red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["fuego_npc","fuego_priest"]}

# Guardia de Llamas (Goety warlock)
summon goety:warlock 1104 65 -404 {CustomName:'{"translate":"npc.guardian_llamas","fallback":"Guardian de Llamas","color":"red"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["fuego_npc","fuego_guard"]}

# Mensaje
tellraw @a {"text":"[Valttheros] El culto del Fuego Interior ha sido convocado en Tucuman","color":"dark_red"}
