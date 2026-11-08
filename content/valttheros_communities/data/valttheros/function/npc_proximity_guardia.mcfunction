# ===========================
# NPC Proximity - Guardia Real
# Jugador se acerca a la Plaza de Buenos Aires
# ===========================

# Marcar que el jugador ya interactuo
tag @s add guardia_dialog

# Mostrar dialogo VNDialog
dialog show ba_guardia_real

# Feedback
tellraw @s {"text":"La Guardia Real te intercepta en la Plaza del Consejo...","color":"white","italic":true}
