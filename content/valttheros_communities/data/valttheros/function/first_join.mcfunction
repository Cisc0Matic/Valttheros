give @s minecraft:written_book[minecraft:written_book_content={title:"Cronicas de Valttheros",author:"La Cronista",pages:['{"text":"VALTTHEROS\\n\\nElige tu linaje con el selector que aparece al entrar.\\n\\nLuego habla con los habitantes nombrados: haz clic derecho para oir sus historias.\\n\\nPoderes: K abre el menu, V cambia habilidad, R la activa y G usa la secundaria."}']}]
function valttheros:grant_intro_grace
execute positioned 500 0 500 positioned over world_surface run tp @s ~ ~1 ~
execute unless score #starter_village valttheros_init matches 1 at @s positioned over world_surface run place template valttheros:settlements/barakoa ~-16 ~ ~-16
scoreboard players set #starter_village valttheros_init 1
scoreboard players set @s first_join_valttheros 1
tag @s add valttheros_character_created
tag @s add valttheros_character_prompted
dialog show character_creation

