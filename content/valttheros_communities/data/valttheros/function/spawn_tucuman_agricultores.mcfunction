# ===========================
# Spawn Agricultores del Norte - Tucuman (X=1000 Z=-300)
# ===========================

# Don Eusebio - Lider anciano (Villager elder)
summon minecraft:villager 1000 65 -300 {CustomName:'{"translate":"npc.don_eusebio","fallback":"Don Eusebio","color":"green","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["farmer_npc","farmer_leader"],VillagerData:{profession:"minecraft:farmer",level:5}}

# Mecha - Joven agricultor (Villager joven)
summon minecraft:villager 1004 65 -296 {CustomName:'{"translate":"npc.mecha","fallback":"Mecha","color":"yellow"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["farmer_npc","farmer_young"],VillagerData:{profession:"minecraft:farmer",level:3}}

# Peon de las chacras (Villager worker)
summon minecraft:villager 996 65 -304 {CustomName:'{"translate":"npc.peon_chacra","fallback":"Peon de las Chacras","color":"dark_green"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["farmer_npc","farmer_worker"],VillagerData:{profession:"minecraft:farmer",level:2}}

# Mensaje
tellraw @a {"text":"[Valttheros] Los Agricultores del Norte han sido convocados en Tucuman","color":"green"}
