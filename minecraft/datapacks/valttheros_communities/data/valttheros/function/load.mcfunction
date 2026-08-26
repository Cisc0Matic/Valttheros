# ===========================
# Valttheros Communities - Load
# ===========================

# Scoreboards
scoreboard objectives add community dummy
scoreboard objectives add npc_dialog dummy
scoreboard objectives add quest_progress dummy
scoreboard objectives add faction_reputation dummy

# Teams
team add barakoa "Tribu Barakoa"
team modify barakoa color gold
team add cultists "Culto de la Llama"
team modify cultists color dark_purple
team add farmers "Agricultores del Norte"
team modify farmers color green
team add wizards "Sabios de La Docta"
team modify wizards color aqua
team add merchants "Mercaderes del Rio"
team modify merchants color yellow
team add guardia "Guardia Real"
team modify guardia color white
team add mortifagos "Mortifagos"
team modify mortifagos color gray
team add players "Jugadores"
team modify players color green

# Spawn NPCs de Estero
function valttheros:spawn_estero_barakoa
function valttheros:spawn_estero_cultist

# Mensaje de carga
tellraw @a {"text":"[Valttheros] Comunidades cargadas - Estero activo","color":"gold","bold":true}
