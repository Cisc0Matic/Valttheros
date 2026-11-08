# ===========================
# Spawn Mercaderes del Rio - Rosario (X=300 Z=-700)
# ===========================

# Capitan Duarte (Villager librarian)
summon minecraft:villager 300 62 -700 {CustomName:'{"translate":"npc.capitan_duarte","fallback":"Capitan Duarte","color":"yellow","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["merchant_npc","merchant_captain"],VillagerData:{profession:"minecraft:librarian",level:5}}

# Mercader Nunez (Villager toolsmith)
summon minecraft:villager 304 62 -704 {CustomName:'{"translate":"npc.mercader_nunez","fallback":"Mercader Nunez","color":"aqua"}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["merchant_npc","merchant_trader"],VillagerData:{profession:"minecraft:toolsmith",level:3}}

# Mensaje
tellraw @a {"text":"[Valttheros] Los Mercaderes del Rio han sido convocados en los Docks de Rosario","color":"yellow"}
