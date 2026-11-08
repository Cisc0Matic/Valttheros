# Plan de comunidades — Valttheros

## Visión

Diez comunidades de seis regiones, con pueblos reconocibles, habitantes con nombre, conversaciones y misiones conectadas. Los asentamientos deben aparecer al iniciar y encontrarse al explorar caminos y biomas nuevos.

## Comunidades y diálogos

| Región | Comunidad | Habitantes / diálogo principal |
|---|---|---|
| Estero | Tribu Barakoa | Guardianes Barakoa y Tata Fawna · `barakoa_tribe` |
| Estero | Culto de la Llama | Adeptos de Goety · `culto_llama` |
| Tucumán | Agricultores del Norte | Trabajadores del campo · `tucuman_agricultores` |
| Tucumán | Fuego Interior | Sacerdocio de Goety · `tucuman_fuego` |
| Córdoba | Sabios de La Docta | Custodios arcanos · `cordoba_sabios` |
| Córdoba | La Sombra | Informantes y hechiceros · `cordoba_sombra` |
| Rosario | Mercaderes del Río | Comerciantes y arrieros · `rosario_mercaderes` |
| Rosario | Mortífagos del Río | Adeptos y barqueros · `rosario_mortifagos` |
| Buenos Aires | Guardia Real | Centinelas y Comandante Vael · `ba_guardia_real` |
| Misiones | Tribu Umvuthana | Guardianes de la selva · `umvuthana_tribe` |

## Entrega 1.1

- El generador ahora crea diez plantillas NBT: antes generaba pools que apuntaban a plantillas ausentes.
- Cada pueblo tiene cuatro viviendas, una plaza, caminos en cruz, aldeanos conversables y un guardián visual de una criatura del mod.
- En cada mundo nuevo se garantiza un pueblo inicial junto al jugador. Nueve pueblos de historia se colocan sobre la superficie en sus coordenadas narrativas.
- Seis pools añaden variantes regionales en chunks nuevos, con frecuencia mayor que la anterior.
- La creación de personaje ofrece tres linajes propios. Después se asigna una de cuatro afinidades elementales al azar, cada una con una pasiva y una habilidad de combate activable.
- El primer ataque a cada comunidad reduce la reputación, marca al jugador como enemigo y convoca un justiciero.
- Se mantienen los diálogos de VNDialog, los retratos integrados y la campaña FTB Quests.

## Pendiente

1. Importar/arrancar en Prism desde una carpeta de datos con permisos y verificar el inicio del juego.
2. Crear un mundo nuevo: comprobar aparición de la aldea, elección de personaje, aleatoriedad elemental y `/trigger habilidad`.
3. Verificar las seis familias de generación natural y el terreno, y recorrer las rutas entre pueblos.
4. Probar interacción de clic derecho con cada NPC y el sistema de reputación, incluida la reacción de las facciones.
5. Ajustar balance, rendimiento y licencias antes de cualquier publicación.

Las aldeas de esta versión son compactas. Todavía no evolucionan físicamente por etapas ni forman ciudades extensas.
