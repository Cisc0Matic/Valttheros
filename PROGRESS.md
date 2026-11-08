# Revision 2026-11-04 — integración del perfil

Esta entrada registra cambios posteriores a las notas históricas de abajo. El prompt original estaba vacío; el objetivo de producto se dejó escrito en `VALTTEROS PROMPT.txt`.

- Se creó una fuente editable del mod de datos en `content/valttheros_communities` y el empaquetador reproducible `tools/build_communities.ps1`.
- Se corrigió la carga de VNDialog: las nueve historias ramificadas estaban en `resourcepacks/valttheros_dialogues/data/dialog/dialogs`, una ubicación que no se aplica como datos del mundo. Ahora están empaquetadas bajo `data/dialog/dialogs` en el mod de comunidades.
- Se habilitó el resource pack de retratos en esta instancia y se añadieron dependencias del mod de datos para los sistemas que invoca.
- El bootstrap queda protegido por un marcador de scoreboard; `/reload` ya no reconstruye el pueblo ni vuelve a convocar todos los NPCs. El tick activo quedó reducido a la bienvenida por jugador; ya no fija el spawn en cada tick, repuebla globalmente ni abre diálogo automático por proximidad.
- Los personajes líderes abren historias de facción al interactuar. Se añadió el objetivo de scoreboard que usa la conversación Barakoa y se corrigió el avance del colono del pueblo para que coincida con el aldeano que genera la función.
- La misión de Buenos Aires ahora cuenta saqueadores y su descripción pide derrotarlos; antes pedía rescatar aldeanos pero contaba aldeanos muertos.
- Se añadieron diez plantillas NBT de asentamientos compactos (cuatro casas, plaza central y habitantes etiquetados por facción) y un pool/structure set de generación natural en el Overworld con separación de 32 chunks. El contenido quedó incluido en `valttheros_communities.jar`; todavía requiere comprobación en un mundo nuevo y una siguiente iteración de asignación por bioma/región.
- No se inició Minecraft ni se verificó el contenido en partida en esta iteración. La importación de una exportación limpia y las pruebas de mundo nuevo siguen pendientes.

---
# Valttheros - Modpack Progress & Context

## Environment
- **Minecraft**: 1.21.1 (NeoForge 21.1.248)
- **Launcher**: PrismLauncher Portable 11.0.3
- **Java**: 21.0.7 (Microsoft)
- **GPU**: AMD Radeon RX 570 8GB | **CPU**: Ryzen 5 5500 | **RAM**: 16GB (allocated 4480-7168MB)
- **Player**: jugador de prueba | **Test worlds**: "Mundo nuevo"

## Goals & Status
1. Essential mod (social/friends) — **DONE** ✅
2. Iris Shaders + Sodium (performance + shaders) — **DONE** ✅ (Iris 1.8.0 + Sodium 0.6.0, NOT TESTED YET)
3. Replace title logo with "Valttheros" — **DONE** ✅
4. "Guia de Valttheros" book in new player inventory — **DONE** ✅
5. Xaero waypoints visible on minimap — **DONE** ✅ (23 waypoints, native format)
6. FTB Quests (polished quest book UI) — **DONE** ✅ (56 quests in SNBT, 16 chapters)
7. RPG Dialogue (NPC portraits + dialogue bars) — **DONE** ✅ (VNDialog, 9 dialogues, 18 portraits)
8. More mobs & creatures — **DONE** ✅ (Naturalist, Alex's Mobs, Mowzie's, Dragon Mounts)
9. Remove JustQuests — **DONE** ✅
10. Game launches + world creation works — **DONE** ✅ (spawn uniforme para todos los jugadores)
11. **Comunidades y Razas** — **COMPLETAS** ✅ (9/9 comunidades, 25 NPCs)
12. **Pueblo Inicial** — **DONE** ✅ (apareces en Pueblo Valttheros, items iniciales)

## Mods Installed (44 JARs)

### Core
- NeoForge 21.1.248, Essential, Lithium, Sodium 0.6.0, Iris 1.8.0

### Performance & QoL
- Lithium, Sodium, AppleSkin, Jade, JEI, Sound Physics Remastered, Falling Leaves

### World Generation
- Biomes O' Plenty, TerraBlender, Moog's Voyager Structures, Structory, Yung's Better Dungeons/Mineshafts

### Combat & RPG
- Epic Fight, Better Combat, Iron's Spells, Goety, Player Animation Lib

### Adventure & Exploration
- Xaero's Minimap + World Map, Waystones, Citadel

### Mobs & Creatures
- **Naturalist** 2.0.3 (11.3MB) — 47 realistic animals
- **Alex's Mobs Neo** 1.22.9 (26.3MB) — 80+ exotic mobs (requires Citadel ✅)
- **Mowzie's Mobs** 1.8.2 (36MB) — boss creatures (Barakoa para NPCs)
- **Dragon Mounts Remastered** 1.9.2 (1.3MB) — rideable dragons

### Quest & Dialogue
- **FTB Library** 2101.1.35 (1.4MB)
- **FTB Teams** 2101.1.10 (303KB)
- **FTB Quests** 2101.1.33 (1.6MB) — 56 quests, 16 capitulos
- **VNDialog** (dialogue system) — 9 dialogues, 18 retratos pixel art

### Libraries
- GeckoLib, Curios, Architectury, Balm, Cloth Config, CreativeCore, GlitchCore, Resourceful Config, Yung's API

### Custom Content
- **ValttherosContent.jar** (11KB) — advancement-based book system
- **Datapack: valttheros_communities** — 9 comunidades, 25 NPCs, 9 loot tables, 9 advancements

### Removed
- JustQuests (replaced by FTB Quests)
- RPG Dialogue (replaced by VNDialog)

## Xaero Waypoints (23 locations)
Created in native Xaero format at:
`minecraft/xaero/minimap/Mundo nuevo/dim%0/waypoints.txt`
`minecraft/xaero/world-map/Mundo nuevo/dim%0/waypoints.txt`

| Waypoint | Coords | Color |
|---|---|---|
| **Puerto Valttheros** | 500, 65, 500 | Yellow (4) |
| Estero - Plaza Principal | 500, 64, 500 | Brown (12) |
| Estero - Guarida del Guardian | 520, 45, 530 | Red (14) |
| Tucuman - Fortaleza del Guardian | 1000, 70, -300 | Light Purple (9) |
| Tucuman - Dulceria del Maestro | 1015, 65, -280 | Yellow (4) |
| Tucuman - Agricultores | 1000, 65, -300 | Green (2) |
| Tucuman - Fuego Interior | 1100, 65, -400 | Red (1) |
| Cordoba - Universidad | -800, 72, 600 | Blue (11) |
| Cordoba - Ruinas Cafeteria | -820, 50, 620 | Brown (12) |
| Cordoba - Sabios de La Docta | -800, 65, 600 | Purple (6) |
| Cordoba - La Sombra | -900, 65, 500 | Dark Purple (5) |
| Rosario - Docks | 300, 62, -700 | Green (13) |
| Rosario - Estadio | 310, 65, -720 | Orange (1) |
| Rosario - Mercaderes del Rio | 300, 62, -700 | Yellow (4) |
| Rosario - Mortifagos | 320, 62, -800 | Gray (7) |
| Guarida de MOUSER | 1500, 40, 1500 | Red (14) |
| Batalla Final - Obelisco | 0, 80, 0 | Yellow (4) |
| Sala del Consejo | 5, 66, 5 | White (0) |
| Herreria del Refugio | -10, 64, 15 | Brown (12) |
| Bosque de los Lamentos | -400, 68, -400 | Green (13) |
| Cripta del Rey Muerto | 700, 30, 700 | Gray (7) |
| Fortaleza del Vacio | -1200, 50, -1200 | Blue (11) |
| Guardia Real | 0, 65, 80 | White (0) |

## FTB Quests (56 quests, 16 chapters)

### Main Story "La Nube Dorada" (8 quests)
`config/ftbquests/quests/784A70C90F6F5A49.snbt`
1. El Despertar del Andariego → collect 1 apple
2. La Siesta del Norte → collect 1 compass
3. La Achilata Perdida → collect 3 nether_wart
4. El Guardian del Azucar → kill 1 iron_golem
5. La Rebelde Pelirroja → kill 5 pillager
6. El Cafe Legendario → collect 16 cocoa_beans
7. El Quilombo Final → kill 3 evoker
8. MOUSER el Raton Gigante → kill 1 warden

### Side Quests (5 quests)
`config/ftbquests/quests/A1B2C3D400000001.snbt`
1. EH URA (Estero) → kill 10 zombie + collect 5 dead_bush
2. TENGO FRIOO (Tucuman) → collect leather armor
3. Che Boludo (Cordoba) → collect 8 melon_slice
4. River vs Boca (Rosario) → kill 3 pillager
5. La Avenida Corrientes (Buenos Aires) → collect 16 bread

### Province Chapters (16 quests)
- Estero Profundo (3), El Norte Azucarero (3), La Docta (3), La Rebelde del Parana (3), El Quilombo Final (4)

### Tribu Barakoa (3 quests) ✅
`config/ftbquests/quests/barakoa_tribe.snbt`
1. El Primer Honor → kill 5 zombies
2. La Mascara Sagrada → collect 1 gold_block + 1 soul_sand
3. Alianza de Sangre → kill 10 warlocks

### Culto de la Llama (3 quests) ✅
`config/ftbquests/quests/culto_llama.snbt`
1. Infiltracion → collect 1 writable_book
2. Robar el Tomo → collect 1 enchanted_book
3. Fin del Culto → kill 1 heresiarch

### Agricultores del Norte (3 quests) ✅
`config/ftbquests/quests/agricultores_norte.snbt`
1. Siembra la Primera Semilla → collect 3 wheat_seeds
2. Ritual del Agua → collect 1 water_bucket + 1 hay_block
3. Ofrenda al Buen Cultivo → kill 3 cave_spider

### Fuego Interior (3 quests) ✅
`config/ftbquests/quests/fuego_interior.snbt`
1. El Fuego Sagrado → collect 1 obsidian + 1 magma_cream
2. Guardianes de Llamas → kill 5 heresiarchs
3. Agradecimiento a los Antepasados → collect 1 cod + 1 salmon

### Sabios de La Docta (3 quests) ✅
`config/ftbquests/quests/sabios_docta.snbt`
1. Cafe de la Docta → collect 8 cocoa_beans
2. Secretos de la Noche → survive night without light
3. El Libro Prohibido → collect 1 book

### La Sombra (3 quests) ✅
`config/ftbquests/quests/la_sombra.snbt`
1. Ritos Prohibidos → collect 1 crying_obsidian + 1 nether_wart
2. La Biblioteca Prohibida → collect 1 book
3. Los Guardianes de la Sombra → kill 3 warlocks

### Mercaderes del Rio (3 quests) ✅
`config/ftbquests/quests/mercaderes_rio.snbt`
1. Barco Cargado → collect 16 cod + 8 leather
2. Pago al Capitan → collect 1 emerald
3. Protegamos el Rio → kill 3 drowned

### Mortifagos (3 quests) ✅
`config/ftbquests/quests/mortifagos.snbt`
1. Fantasmas del Pasado → visit location X=320 Z=-800
2. Conchas del Fondo → collect 3 nautilus_shell
3. Limpiemos el Rio → kill 5 drowned

### Guardia Real (3 quests) ✅
`config/ftbquests/quests/guardia_real.snbt`
1. Guardia de la Ciudad → visit location X=0 Z=80
2. Protegemos a los Ciudadanos → kill 5 villagers
3. Invasores del Vacio → kill 5 enderman

## Communities System (9/9 COMPLETAS) ✅

### Datapack: `minecraft/datapacks/valttheros_communities/`
- `pack.mcmeta` — Pack format 48
- `data/valttheros/function/load.mcfunction` — Init scores, teams, spawn ALL NPCs, build pueblo
- `data/valttheros/function/tick.mcfunction` — Proximity detection ALL provinces + first join + return pueblo
- `data/valttheros/function/first_join.mcfunction` — Teleport al pueblo + items iniciales
- `data/valttheros/function/return_pueblo.mcfunction` — Volver al pueblo con /trigger spawn_pueblo
- `data/valttheros/function/spawn_pueblo_valttheros.mcfunction` — Construye el pueblo inicial
- **Estero**: `spawn_estero_barakoa` + `spawn_estero_cultist` + `npc_proximity_barakoa` + `npc_proximity_cultist`
- **Tucuman**: `spawn_tucuman_agricultores` + `spawn_tucuman_fuego` + `npc_proximity_farmer` + `npc_proximity_fuego`
- **Cordoba**: `spawn_cordoba_sabios` + `spawn_cordoba_sombra` + `npc_proximity_wizard` + `npc_proximity_sombra`
- **Rosario**: `spawn_rosario_mercaderes` + `spawn_rosario_mortifagos` + `npc_proximity_merchant` + `npc_proximity_mortifago`
- **Buenos Aires**: `spawn_ba_guardia_real` + `npc_proximity_guardia`
- **Loot tables**: barakoa, cultist, agricultor, fuego, sabio, sombra, mercader, mortifago, guardia (9 total)
- **Advancements**: alliance_barakoa, cultist_defeated, alliance_agricultores, dominio_del_fuego, alliance_sabios, iniciacion_sombra, alliance_mercaderes, guardian_del_rio, defensor_buenos_aires (9 total)

### VNDialog Resource Pack: `minecraft/resourcepacks/valttheros_dialogues/`
- **9 dialogue JSONs** (2 existing + 7 new):
  - `barakoa_tribe.json` — 8 entries (Estero)
  - `culto_llama.json` — 9 entries (Estero)
  - `tucuman_agricultores.json` — 8 entries (Tucuman)
  - `tucuman_fuego.json` — 7 entries (Tucuman)
  - `cordoba_sabios.json` — 7 entries (Cordoba)
  - `cordoba_sombra.json` — 7 entries (Cordoba)
  - `rosario_mercaderes.json` — 8 entries (Rosario)
  - `rosario_mortifagos.json` — 9 entries (Rosario)
  - `ba_guardia_real.json` — 8 entries (Buenos Aires)
- **18 pixel art portraits** (128x128):
  - Estero: barakoa_seer, barakoa_fury, cultist_warlock, cultist_heretic
  - Tucuman: agricultor_young, agricultor_elder, fuego_priest, fuego_guardian
  - Cordoba: sabio_elder, sabio_apprentice, sombra_priest, sombra_messenger
  - Rosario: mercader_captain, mercader_apprentice, mortifago_leader, mortifago_priest
  - Buenos Aires: guardia_commander, guardia_sentinel

### NPCs Spawned (9 provincias, 25 NPCs total)
| Provincia | NPC | Entity | Coords | Team |
|---|---|---|---|---|
| Estero | Tata Fawna | mowziesmobs:barakoa_seer | X=500 Z=500 | barakoa |
| Estero | Guardian del Bosque | mowziesmobs:barakoa_fury | X=504 Z=496 | barakoa |
| Estero | Joven Kael | mowziesmobs:barakoa_horn | X=496 Z=504 | barakoa |
| Estero | Sombras Veloz | goety:warlock | X=520 Z=530 | cultists |
| Estero | Acolito del Fuego | goety:heretic | X=523 Z=527 | cultists |
| Tucuman | Don Eusebio | minecraft:villager | X=1000 Z=-300 | farmers |
| Tucuman | Mecha | minecraft:villager | X=1004 Z=-296 | farmers |
| Tucuman | Peon de las Chacras | minecraft:villager | X=996 Z=-304 | farmers |
| Tucuman | Sumo Sacerdote Ignes | goety:heresiarch | X=1100 Z=-400 | fuego |
| Tucuman | Guardian de Llamas | goety:warlock | X=1104 Z=-404 | fuego |
| Cordoba | Maestro Zenon | irons_spellbooks:caster_npc | X=-800 Z=600 | wizards |
| Cordoba | Aprendiz Valeria | irons_spellbooks:caster_npc | X=-796 Z=604 | wizards |
| Cordoba | El Innombrable | goety:warlock | X=-900 Z=500 | sombra |
| Cordoba | Mensajero Enmascarado | goety:warlock | X=-896 Z=504 | sombra |
| Rosario | Capitan Duarte | minecraft:villager | X=300 Z=-700 | merchants |
| Rosario | Mercader Nunez | minecraft:villager | X=304 Z=-704 | merchants |
| Rosario | El Capitan Muerto | goety:heresiarch | X=320 Z=-800 | mortifagos |
| Rosario | Sacerdote del Rio | goety:warlock | X=324 Z=-804 | mortifagos |
| Buenos Aires | Comandante Vael | mowziesmobs:barakoa_fury | X=0 Z=80 | guardia |
| Buenos Aires | Sentinela de Turno | mowziesmobs:barakoa_horn | X=4 Z=84 | guardia |

### 9 Comunidades (TODAS COMPLETAS) ✅
1. Tribu Barakoa (Estero) — **COMPLETA** ✅
2. Culto de la Llama (Estero) — **COMPLETA** ✅
3. Agricultores del Norte (Tucuman) — **COMPLETA** ✅
4. Fuego Interior (Tucuman) — **COMPLETA** ✅
5. Sabios de La Docta (Cordoba) — **COMPLETA** ✅
6. La Sombra (Cordoba) — **COMPLETA** ✅
7. Mercaderes del Rio (Rosario) — **COMPLETA** ✅
8. Mortifagos (Rosario) — **COMPLETA** ✅
9. Guardia Real (Buenos Aires) — **COMPLETA** ✅

## Iris + Sodium Crash History

| Iris | Sodium | Result | Missing Class |
|---|---|---|---|
| 1.8.12 | 0.8.12 | CRASH | `SodiumGameOptions$PerformanceSettings` |
| 1.8.12 | 0.6.0 | CRASH | `SpriteUtil` |
| 1.8.0 | 0.8.12 | CRASH | `SodiumGameOptions$PerformanceSettings` |
| **1.8.0** | **0.6.0** | **NOT TESTED** | Original matching pair |

## GitHub Repository
- **URL**: https://github.com/Cisc0Matic/Valttheros
- Custom content only (no mod JARs, saves, logs)
- 350 files, 30687 insertions

## Pueblo Valttheros (X=500 Z=500) ✅

El jugador aparece automaticamente en el Pueblo Valttheros al crear un mundo nuevo.

### Estructura del Pueblo:
- **Plaza Principal** con fuente de agua
- **Casa del Jugador** con cama, mesa de trabajo y horno
- **Herreria** con yunque, horno de fundicion y mesa de herrero
- **Almacen** con barriles y cofre
- **Caminos** de grava conectando todo
- **Iluminacion** con faroles y antorchas

### Items Iniciales (al aparecer):
- Espada de piedra
- 16 carne cocida
- 16 antorchas
- Mesa de trabajo
- Pico de hierro
- Hacha de hierro

### Comandos Utiles:
- `/trigger spawn_pueblo` — Volver al pueblo en cualquier momento
- Apareces automaticamente al crear mundo nuevo

## NEXT STEP: TEST THE FULL MODPACK
Launch PrismLauncher → Load "Mundo nuevo" → Check:
1. Game loads to main menu (no crash)
2. World loads, player can move
3. Shaders menu appears (ESC → Options → Video Settings → Shaders)
4. 16 waypoints visible on minimap (colored dots with names)
5. FTB Quests book opens (keybind or inventory button)
6. Right-click NPC → RPG Dialogue panel appears with portrait
7. New mobs spawn (Naturalist animals, Alex's Mobs creatures)
8. "Guia de Valttheros" book in inventory on new world

## Fallback for Iris/Sodium
If still crashes → remove Iris, restore Sodium 0.8.12 (no shaders but game works)

## Key File Paths
- `...\instances\Valttheros\mmc-pack.json` — NeoForge version
- `...\instances\Valttheros\instance.cfg` — Java/RAM config
- `...\instances\Valttheros\PLAN_COMUNIDADES.md` — Comunidades plan completo
- `...\minecraft\mods\` — all mods (42 JARs + 2 backups)
- `...\minecraft\resourcepacks\valttheros_title\` — title logo pack
- `...\minecraft\resourcepacks\valttheros_dialogues\` — VNDialog dialogues + portraits
- `...\minecraft\datapacks\valttheros_communities\` — Communities datapack (NPCs, loot, advancements)
- `...\minecraft\config\ftbquests\quests\` — FTB Quests data (9 chapters, 35 quests)
- `...\minecraft\crash-reports\` — crash logs

## Notes
- ValttherosContent.jar rebuilt (20/08/2026): entries had backslash paths (`META-INF\neoforge.mods.toml`) so NeoForge skipped it as "not a valid mod file". Re-zipped with forward slashes; backup at instance root `ValttherosContent.jar.bak`. When regenerating this jar, always use `/` in entry names.
- ValttherosContent.jar v3 (20/08/2026 noche): 3 fixes — (1) advancement renombrado `root.json`→`welcome.json` porque `valttheros:root` ya estaba consumido en el mundo nuevo; (2) clave de reward corregida `loot_tables`→`loot` (la clave vieja se ignoraba silenciosamente); (3) páginas del libro reescritas como strings planos (el formato `{"raw":...}` fallaba el parseo en NeoForge 21.1). Log confirmó: "Deleting level Mundo nuevo" a las 22:04 = los waypoints del mundo viejo se perdieron con el borrado.
- ValttherosContent.jar v4 (20/08/2026 noche): NUNCA SE GUARDO correctamente en mods/. El jar en mods seguia siendo el original con root.json, loot_tables (clave erronea) y paginas con codigos §.
- ValttherosContent.jar v6 (21/08/2026): Reemplazado sistema de advancement por funciones de datapack. #minecraft:load ejecuta valttheros:setup (crea scoreboard "valttheros_guide"). #minecraft:tick ejecuta valttheros:tick que detecta jugadores sin score>=1 y llama valttheros:give_guide (scoreboard=1 + loot give). Advancement guia.json se mantiene como backup con icono corregido a {"item":...} y announce_to_chat:false. Jar creado con JDK jar.exe (forward-slashes garantizados).
- ValttherosContent.jar v5 (20/08/2026): 3 fixes reales aplicados — (1) advancement renombrado a guia.json (ID valttheros:guia, nunca consumido); (2) clave de reward corregida a "loot"; (3) loot table reescrita: set_components(title/author) + set_name + set_written_book_pages(mode append, paginas como arrays de objetos JSON {text,color,bold}). Trigger cambiado de minecraft:location (no disparaba sin condiciones) a minecraft:tick (dispara en el primer tick del mundo, igual que goety/root). Backup del jar anterior: ValttherosContent_v4.jar.bak en mods/. Jar creado con JDK jar.exe para garantizar forward-slashes en las entradas.
- Xaero config: ignoreServerLevelId cambiado a true en xaero\minimap\Mundo nuevo\config.txt — Xaero ya no borra waypoints al recrear el mundo con el mismo nombre. IMPORTANTE: si se usa otro nombre de mundo, crear la carpeta del nuevo nombre con config.txt identico.
- Waypoints re-inyectados (21/08/2026): 16 puntos en `minecraft\xaero\minimap\Mundo nuevo\dim%0\waypoints.txt`. Xaero habia borrado el directorio dim%0 al detectar que el mundo fue recreado. OJO: editar SOLO con el juego cerrado; Xaero pisa el archivo al salir del mundo.
- Epic Fight has pre-existing `forge:separate_transforms` errors (unrelated)
- Title logo generated via .NET System.Drawing (no Python available)
- User speaks Spanish, Argentine-themed lore
- Item Filters no longer needed (FTB Quests uses FTB Filter System instead)
- Naturalist v2.0 removed GeckoLib dependency (already installed anyway)
- Alex's Mobs Neo (TysonTheEmber port) — do NOT install Raguto's port

## Revision 2026-11-05 — generacion regional y paquete limpio

- Se añadieron seis pools de asentamientos asociados a familias de biomas de las seis regiones. Se mantienen diez estructuras compactas con cuatro casas, plaza y habitantes etiquetados.
- Las historias y los retratos de VNDialog quedaron embebidos en el mod de comunidades; el JAR contiene 35 JSON de diálogo y 18 retratos.
- El JAR actual contiene diez plantillas NBT, seis pools, dependencias explícitas (incluido Biomes O' Plenty) y metadatos lowcodefml.
- `tools/build_release.ps1` genera `dist/Valttheros-1.0.0.zip` desde una lista limpia: mods activos, configs, recursos propios seleccionados, icono y loader. Excluye mundos, logs, caches, perfiles/mapas personales y JARs de respaldo. Incluye solo los waypoints temáticos de Valttheros.
- El ZIP se construyó y su inventario revisado: 433 MB, sin `saves`, `logs`, `options.txt`, `servers.dat` ni respaldos. Los JSON de worldgen parsean; esto no sustituye la comprobación dentro de Minecraft.
- Sigue pendiente iniciar/importar el perfil y validar generación, misiones, diálogos, renderizado y rendimiento en partida. También falta revisar licencias antes de redistribución pública.

## Revision 2026-11-05 — corrección de generación y RPG de personaje

- Causa raíz encontrada: el generador de pools no producía las plantillas NBT referenciadas. Además, funciones antiguas ubicaban edificios a Y=63/65 independientemente del terreno.
- El generador ahora escribe diez aldeas completas con cuatro viviendas, plaza, caminos, personajes y guardianes de criatura. Seis pools regionales se espacian a 12/6 chunks. Bootstrap coloca los asentamientos narrativos en superficie y la primera entrada garantiza el pueblo inicial.
- Los personajes usan criterios de interacción por tags; las personas de diálogo no abren comercio. Se mantienen criaturas de Mowzie, Goety e Iron's Spells como guardianes de cada comunidad.
- Se añadió creación de personaje con tres linajes (Nácar, Pedraluz, Silvano), cuatro afinidades elementales aleatorias, pasivas y habilidad `/trigger habilidad` con 10 s de enfriamiento.
- Se agregó reputación: el primer golpe a un miembro de cada comunidad marca al jugador como enemigo y convoca un justiciero.
- Se recompiló `valttheros_communities.jar` y se generó `dist/Valttheros-1.1.0.zip`.
- Validación estática: sintaxis JSON, diez plantillas NBT, seis pools y referencias del paquete. No se pudo iniciar Minecraft. Prism reportó que su carpeta de datos está protegida contra escritura; los intentos temporales fallaron al descargar metadatos por error de red "No credentials". No se da por validado el mundo.
- No se instaló el JAR externo The Awakening: las descargas de mods están bloqueadas en el entorno. El pack implementa el despertar aleatorio sin añadir ese JAR.

## Actualización 2026-11-05 — exportación 1.1.1 y arranque

- Se corrigieron las funciones con BOM que el último registro de Minecraft no podía parsear, el formato 1.21 de iconos de avances y funciones de prueba con identificadores de entidad/bloque no registrados.
- Se reconstruyó `minecraft/mods/valttheros_communities.jar` y el paquete `dist/Valttheros-1.1.1.zip`.
- El exportador filtra ahora respaldos `.bak`/`.old` y datos personales de Xaero. Auditoría del ZIP: 49 mods, 16 capítulos FTB Quests, JAR de Valttheros presente y cero mundos, logs, opciones, datos de cuenta o respaldos.
- El arranque en juego sigue sin verificar: Prism abre con el mensaje `The launcher data folder is not writable!`; no aparece un proceso Java. La carpeta de datos de Prism está fuera del espacio editable de esta sesión.
- Se integraron once estructuras de aventura de Moog's Voyager Structures y Structory en el bootstrap de mundo; las once referencias fueron contrastadas con los JAR instalados y ahora se proyectan a la superficie.- Se sustituyeron tres tipos de entidad inexistentes en las plantillas por guardianes registrados (dos gólems y un storm caster de Goety), y se corrigió el icono de alianza Barakoa a una máscara Umvuthana incluida.
- Los nueve avances personalizados ahora usan el esquema de iconos 1.21, referencias a objetos existentes y requisitos derivados de sus criterios, sin listas de requisitos vacías.
## Actualización 2026-11-05 — validación de arranque

- Prism inició Minecraft 1.21.1 y abrió un mundo nuevo (`test6`). El log ya no reporta errores propios de funciones, avances, loot tables ni biome tags del mod Valttheros.
- El servidor sí detectó nueve capítulos FTB Quests con SNBT inválido por comillas anidadas en recompensas. Corregí 29 recompensas a componentes de Minecraft 1.21 en la carpeta activa `minecraft/config/ftbquests/quests/chapters`.
- Los cambios de capítulos están guardados en disco y en la exportación 1.1.2; la sesión actual se dejó abierta y aún contiene la carga anterior. Reinicia Minecraft para comprobar los capítulos ya reparados.
## Actualización 2026-11-05 — protección, poder y secuencia de inicio

- Se añadieron The Awakening 1.23.3 para NeoForge 1.21.1 y Scripted Vision 1.0 desde sus canales oficiales; la descarga quedó verificada por SHA-1. Curios y Player Animation Library, sus dependencias requeridas, ya estaban en la instancia.
- Tras elegir Nácar, Pedraluz o Silvano, el jugador recibe al azar uno de seis poderes de The Awakening. La protección temporal se aplica al primer ingreso, antes del selector, y vuelve a aplicarse al elegir linaje: resistencia, respiración acuática, resistencia al fuego, caída lenta y regeneración.
- Se integró una toma con cámara, barras cinematográficas, fundido y texto al final de la personalización.
- La sesión abierta fue iniciada antes de añadir esos dos mods. Se dejó intacta; hay que cerrar y abrir Minecraft, y crear un mundo nuevo, para ver el selector, los poderes y la cinemática actualizados. La 1.1.3 contiene también las 29 correcciones de SNBT FTB aplicadas después del primer arranque.
### Corrección final de arranque 1.1.3 (5 nov 2026)
- El primer intento confirmó un requisito real ausente: The Awakening pide Player Animation Library (mod ID player_animation_library). El jar player-animation-lib-forge existente no satisface ese ID; añadida PlayerAnimationLibNeoforge 1.1.6+mc.1.21.1.
- Recompilado dist/Valttheros-1.1.3.zip con la dependencia correcta. El segundo arranque completó carga de mods y llegó a renderizar menús; el log registra Awakening y no repite el fatal de dependencia. La prueba de flujo de personaje/cinemática requiere crear un mundo nuevo en esta instancia.


## Correcciones de creación, poder y personajes — 1.1.4
- El log de test7 mostró que intro_cinematic no compilaba: Scripted Vision requiere coordenadas absolutas. Se fijó la toma en el punto de inicio y se agregó una guía post-cinemática de teclas K/V/R/G.
- La asignación aleatoria ahora se ejecuta directamente al elegir cada linaje, en vez de depender del salto de diálogo. Las partidas a medias vuelven a abrir el selector; mientras no se elija, se mantienen resistencia, respiración acuática, fuego y caída lenta.
- Los diálogos por clic derecho ahora se ejecutan con el habitante como hablante. El generador dejó de convertir a todos los habitantes en aldeanos nitwit de llanura: usa el oficio definido por personaje y variantes culturales regionales.
- Se está reconstruyendo el paquete 1.1.4 y reiniciando para revisar el registro de carga.


- Se incorporó el resource pack de retratos al exportador; la exportación crea opciones mínimas para dejarlo activo al importar. En el menú de 1.1.4 el cliente ya cargó Awakening, Scripted Vision y la dependencia sin repetir el error anterior; no se abrió un mundo nuevo para no interrumpir la sesión del usuario.
