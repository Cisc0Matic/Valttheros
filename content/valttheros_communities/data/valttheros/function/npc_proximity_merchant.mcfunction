# ===========================
# NPC Proximity - Mercaderes del Rio
# Jugador se acerca a los docks de Rosario
# ===========================

# Marcar que el jugador ya interactuo
tag @s add merchant_dialog

# Mostrar dialogo VNDialog
dialog show rosario_mercaderes

# Feedback
tellraw @s {"text":"Los gritos de los mercaderes te dan la bienvenida a los Docks...","color":"yellow","italic":true}
