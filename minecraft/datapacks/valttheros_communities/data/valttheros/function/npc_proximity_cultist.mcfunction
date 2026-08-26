# ===========================
# NPC Proximity - Cultistas
# Jugador se acerca al Culto de la Llama
# ===========================

# Marcar que el jugador ya interactuo
tag @s add cultist_dialog

# Mostrar dialogo VNDialog
dialog show culto_llama

# Feedback
tellraw @s {"text":"Una presencia oscura te rodea...","color":"dark_purple","italic":true}
