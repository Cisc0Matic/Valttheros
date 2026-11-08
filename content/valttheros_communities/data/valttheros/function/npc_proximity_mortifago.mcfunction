# ===========================
# NPC Proximity - Mortifagos del Rio
# Jugador se acerca a las islas del Parana
# ===========================

# Marcar que el jugador ya interactuo
tag @s add mortifago_dialog

# Mostrar dialogo VNDialog
dialog show rosario_mortifagos

# Feedback
tellraw @s {"text":"El agua se torna helada... los Mortifagos sienten tu presencia.","color":"gray","italic":true}
