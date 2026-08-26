# ===========================
# NPC Proximity - Barakoa
# Jugador se acerca a la Tribu Barakoa
# ===========================

# Marcar que el jugador ya interactuo
tag @s add barakoa_dialog

# Mostrar dialogo VNDialog
dialog show barakoa_tribe

# Feedback
tellraw @s {"text":"Te acercas a la Tribu Barakoa...","color":"gold","italic":true}
