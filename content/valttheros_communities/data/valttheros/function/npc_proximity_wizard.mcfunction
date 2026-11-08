# ===========================
# NPC Proximity - Sabios de La Docta
# Jugador se acerca a las ruinas de Cordoba
# ===========================

# Marcar que el jugador ya interactuo
tag @s add wizard_dialog

# Mostrar dialogo VNDialog
dialog show cordoba_sabios

# Feedback
tellraw @s {"text":"El aroma a cafe te guia hacia los Sabios de La Docta...","color":"aqua","italic":true}
