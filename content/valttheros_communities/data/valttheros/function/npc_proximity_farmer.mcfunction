# ===========================
# NPC Proximity - Agricultores del Norte
# Jugador se acerca a las chacras de Tucuman
# ===========================

# Marcar que el jugador ya interactuo
tag @s add farmer_dialog

# Mostrar dialogo VNDialog
dialog show tucuman_agricultores

# Feedback
tellraw @s {"text":"Te acercas a las chacras de Tucuman...","color":"green","italic":true}
