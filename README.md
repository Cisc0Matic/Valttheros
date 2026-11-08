# Valttheros 1.1.5

**Aventura RPG de fantasía regional en una Argentina alternativa.** Explora seis regiones, diez comunidades con intereses propios y la amenaza de la Nube Dorada.

> Estado: Valttheros 1.1.5, Minecraft 1.21.1 / NeoForge 21.1.248. Se reparó el punto de aparición para evitar el fallo de entrada causado por Awakening y se corrigió la invocación de diálogos de VNDialog 1.0.6.

## Al comenzar

Al entrar por primera vez aparece el selector de linaje en VNDialog. Si una partida quedó a medias, el selector se abre de nuevo hasta completar la elección. La protección se mantiene mientras falta elegir. Elige uno de tres linajes originales: Nácar (respiración acuática), Pedraluz (resistencia) o Silvano (visión nocturna). Al elegir linaje recibes una protección inicial de tres minutos contra daño, ahogo y fuego. Después The Awakening elige al azar uno de seis poderes elementales —geocinético, hidrocinético, criocinético, aerocinético, pirocinético o llamador de tormentas— y comienza una cinemática que termina con una guía jugable: K abre el panel, V cambia la habilidad, R la activa y G usa la secundaria. Puedes cambiar las teclas en Opciones → Controles → The Awakening.

Al aparecer se construye el pueblo inicial sobre la altura del terreno. Los habitantes tienen nombres, oficios y variantes de región; haz clic derecho para escuchar diálogos con sus voces. Cada asentamiento incluye un guardián propio. Las conversaciones y retratos viajan dentro del mod de Valttheros. FTB Quests presenta la campaña y los capítulos regionales.

## Comunidades

| Región | Comunidad | Tema |
|---|---|---|
| Estero | Tribu Barakoa | Guardianes del humedal y sus tradiciones |
| Estero | Culto de la Llama | Ritualistas y custodios del fuego |
| Tucumán | Agricultores del Norte | Chacras, semillas y cosechas |
| Tucumán | Fuego Interior | Custodios de un poder antiguo |
| Córdoba | Sabios de La Docta | Historia, conocimiento y magia |
| Córdoba | La Sombra | Informantes y secretos prohibidos |
| Rosario | Mercaderes del Río | Comercio y rutas del Paraná |
| Rosario | Mortífagos del Río | Misterios y amenazas de las aguas |
| Buenos Aires | Guardia Real | Defensa de la capital |
| Misiones | Tribu Umvuthana | Guardianes de la selva |

Los asentamientos combinan personajes con nombre y oficios culturales, aldeanos sin comercio para los diálogos y guardianes de criaturas de Mowzie's Mobs, Goety, Iron's Spells y Minecraft. Las comunidades se pueden atacar. El primer golpe a cada facción reduce la reputación y puede enviar un justiciero tras el jugador.

## Pueblos y caminos

La corrección principal fue hacer que el generador sí escriba las diez plantillas NBT que antes solo referenciaban los pools. Los pueblos ahora se colocan a la altura de superficie; el pueblo inicial se garantiza al llegar y los nueve asentamientos regionales de historia se colocan una vez por mundo. Además, seis pools generan asentamientos adicionales por familias de biomas en chunks nuevos. Once puntos de interés de aventura —ruinas, torres, capillas, campamentos y puestos— se colocan junto a las rutas regionales. Cada plantilla tiene cuatro casas, plaza y caminos en cruz que salen del pueblo.

Se inició un mundo de prueba; queda reiniciar para confirmar la corrección del cargador de capítulos FTB y ver la secuencia y el despertar con los mods nuevos. Los pueblos son aldeas compactas, todavía no ciudades grandes con crecimiento de edificios por etapas.

## Base técnica

- Minecraft 1.21.1 · NeoForge 21.1.248 · Java 21
- Biomes O' Plenty, TerraBlender, Moog's Voyager Structures, Structory, MineColonies y YUNG's Better Dungeons/Mineshafts.
- Naturalist, Alex's Mobs, Mowzie's Mobs, Goety, Iron's Spells 'n Spellbooks, Epic Fight, Better Combat y Dragon Mounts Remastered.
- The Awakening, Scripted Vision, FTB Quests, FTB Teams, VNDialog, JEI, Jade, Xaero's Minimap/World Map y Waystones.

La selección de linaje es contenido propio del pack y concede protección de entrada; The Awakening proporciona los poderes elementales.

## Importar y desarrollar

Importa [dist/Valttheros-1.1.5.zip](dist/Valttheros-1.1.5.zip) desde Prism Launcher → Añadir instancia → Importar; asigna 6–8 GB de memoria y crea un mundo nuevo. Los retratos de diálogo se activan por defecto al importar. Los resource packs de título, splash y traducciones se pueden activar en Opciones → Paquetes de recursos.

El contenido editable está en `content/valttheros_communities`. Para reconstruir el mod y la exportación:

```powershell
.\tools\generate_settlement_templates.ps1
.\tools\build_communities.ps1
.\tools\build_release.ps1
```

`minecraft` es la instancia de trabajo: excluye saves, logs, mapas personales, cuentas y respaldos del ZIP. El paquete se armó para uso de prueba; antes de redistribuirlo públicamente hay que revisar las licencias de los mods.
