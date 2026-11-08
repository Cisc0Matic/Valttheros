# ===========================
# NPC Proximity - Fuego Interior
# Jugador se acerca al altar del Fuego
# ===========================

# Marcar que el jugador ya interactuo
tag @s add fuego_dialog

# Mostrar dialogo VNDialog
dialog show tucuman_fuego

# Feedback
tellraw @s {"text":"El calor del Fuego Interior siente tu presencia...","color":"dark_red","italic":true}
