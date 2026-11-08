# ===========================
# NPC Proximity - La Sombra
# Jugador se acerca a los subterraneos de Cordoba
# ===========================

# Marcar que el jugador ya interactuo
tag @s add sombra_dialog

# Mostrar dialogo VNDialog
dialog show cordoba_sombra

# Feedback
tellraw @s {"text":"Las sombras te rodean... La Sombra ha notado tu presencia.","color":"dark_purple","italic":true}
