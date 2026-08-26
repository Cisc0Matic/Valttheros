# Valttheros - Modpack Progress & Context

## Environment
- **Minecraft**: 1.21.1 (NeoForge 21.1.248)
- **Launcher**: PrismLauncher Portable 11.0.3
- **Java**: 21.0.7 (Microsoft)
- **GPU**: AMD Radeon RX 570 8GB | **CPU**: Ryzen 5 5500 | **RAM**: 16GB (allocated 4480-7168MB)
- **Player**: MalditoFrancis | **Test worlds**: "Mundo nuevo"

## Goals & Status
1. Essential mod (social/friends) — **DONE** ✅
2. Iris Shaders + Sodium (performance + shaders) — **DONE** ✅ (Iris 1.8.0 + Sodium 0.6.0, NOT TESTED YET)
3. Replace title logo with "Valttheros" — **DONE** ✅
4. "Guia de Valttheros" book in new player inventory — **DONE** ✅
5. Xaero waypoints visible on minimap — **DONE** ✅ (native format created)
6. FTB Quests (polished quest book UI) — **DONE** ✅ (35 quests in SNBT, 9 chapters)
7. RPG Dialogue (NPC portraits + dialogue bars) — **DONE** ✅ (VNDialog, 2 dialogues Estero)
8. More mobs & creatures — **DONE** ✅ (Naturalist, Alex's Mobs, Mowzie's, Dragon Mounts)
9. Remove JustQuests — **DONE** ✅
10. Game launches + world creation works — **PENDING** 🔄
11. **Comunidades y Razas** — **PROTOTYPE ESTERO** 🔄 (2/9 comunidades)

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

### Mobs & Creatures (NEW)
- **Naturalist** 2.0.3 (11.3MB) — 47 realistic animals
- **Alex's Mobs Neo** 1.22.9 (26.3MB) — 80+ exotic mobs (requires Citadel ✅)
- **Mowzie's Mobs** 1.8.2 (36MB) — boss creatures
- **Dragon Mounts Remastered** 1.9.2 (1.3MB) — rideable dragons

### Quest & Dialogue (NEW)
- **FTB Library** 2101.1.35 (1.4MB)
- **FTB Teams** 2101.1.10 (303KB)
- **FTB Quests** 2101.1.33 (1.6MB)
- **RPG Dialogue** 1.0.0 (310KB) — NPC portrait dialogue system

### Libraries
- GeckoLib, Curios, Architectury, Balm, Cloth Config, CreativeCore, GlitchCore, Resourceful Config, Yung's API

### Custom Content
- **ValttherosContent.jar** (11KB) — advancement-based book system

### Removed
- JustQuests (replaced by FTB Quests)

## Xaero Waypoints (16 locations)
Created in native Xaero format at:
`saves/Mundo nuevo/xaero-waypoints/dim%0/waypoints.txt`

| Waypoint | Coords | Color |
|---|---|---|
| Refugio del Alba | 0, 64, 0 | Yellow (4) |
| Estero - Plaza Principal | 500, 64, 500 | Brown (12) |
| Estero - Guarida del Guardian | 520, 45, 530 | Red (14) |
| Tucuman - Fortaleza del Guardian | 1000, 70, -300 | Light Purple (9) |
| Tucuman - Dulceria del Maestro | 1015, 65, -280 | Yellow (4) |
| Cordoba - Universidad | -800, 72, 600 | Blue (11) |
| Cordoba - Ruinas Cafeteria | -820, 50, 620 | Brown (12) |
| Rosario - Docks | 300, 62, -700 | Green (13) |
| Rosario - Estadio | 310, 65, -720 | Orange (1) |
| Guarida de MOUSER | 1500, 40, 1500 | Red (14) |
| Batalla Final - Obelisco | 0, 80, 0 | Yellow (4) |
| Sala del Consejo | 5, 66, 5 | White (0) |
| Herreria del Refugio | -10, 64, 15 | Brown (12) |
| Bosque de los Lamentos | -400, 68, -400 | Green (13) |
| Cripta del Rey Muerto | 700, 30, 700 | Gray (7) |
| Fortaleza del Vacio | -1200, 50, -1200 | Blue (11) |

## FTB Quests (35 quests, 9 chapters)

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

### NEW: Tribu Barakoa (3 quests) ✅
`config/ftbquests/quests/barakoa_tribe.snbt`
1. El Primer Honor → kill 5 zombies
2. La Mascara Sagrada → collect 1 gold_block + 1 soul_sand
3. Alianza de Sangre → kill 10 warlocks

### NEW: Culto de la Llama (3 quests) ✅
`config/ftbquests/quests/culto_llama.snbt`
1. Infiltracion → collect 1 writable_book
2. Robar el Tomo → collect 1 enchanted_book
3. Fin del Culto → kill 1 heresiarch

## Communities System (PROTOTYPE ESTERO) ✅

### Datapack: `minecraft/datapacks/valttheros_communities/`
- `pack.mcmeta` — Pack format 48
- `data/valttheros/function/load.mcfunction` — Init scores, teams, spawn NPCs
- `data/valttheros/function/tick.mcfunction` — Proximity detection
- `data/valttheros/function/spawn_estero_barakoa.mcfunction` — 3 Barakoa NPCs
- `data/valttheros/function/spawn_estero_cultist.mcfunction` — 2 Cultist NPCs
- `data/valttheros/function/npc_proximity_barakoa.mcfunction` — Dialog trigger
- `data/valttheros/function/npc_proximity_cultist.mcfunction` — Dialog trigger
- `data/valttheros/loot_table/community/barakoa_reward.json` — Tribal rewards
- `data/valttheros/loot_table/community/cultist_reward.json` — Dark rewards
- `data/valttheros/advancement/alliance_barakoa.json` — Alliance achievement
- `data/valttheros/advancement/cultist_defeated.json` — Defeat achievement

### VNDialog Resource Pack: `minecraft/resourcepacks/valttheros_dialogues/`
- `data/dialog/dialogs/barakoa_tribe.json` — 8 entries, branching dialogue
- `data/dialog/dialogs/culto_llama.json` — 9 entries, branching dialogue
- `assets/dialog/textures/portraits/` — 4 pixel art portraits (128x128):
  - `barakoa_seer.png` — Tata Fawna (golden mask, elder)
  - `barakoa_fury.png` — Guardian del Bosque (war mask, angry)
  - `cultist_warlock.png` — Sombras Veloz (dark hood, purple eyes)
  - `cultist_heretic.png` — Acolito del Fuego (crimson hood, fire eyes)

### NPCs Spawned (Estero)
| NPC | Entity | Coords | Team |
|---|---|---|---|
| Tata Fawna | mowziesmobs:barakoa_seer | X=500 Z=500 | barakoa |
| Guardian del Bosque | mowziesmobs:barakoa_fury | X=504 Z=496 | barakoa |
| Joven Kael | mowziesmobs:barakoa_horn | X=496 Z=504 | barakoa |
| Sombras Veloz | goety:warlock | X=520 Z=530 | cultists |
| Acolito del Fuego | goety:heretic | X=523 Z=527 | cultists |

### 9 Communidades (Plan completo, ver PLAN_COMUNIDADES.md)
1. Tribu Barakoa (Estero) — **PROTOTYPE** ✅
2. Culto de la Llama (Estero) — **PROTOTYPE** ✅
3. Agricultores del Norte (Tucuman) — PENDING
4. Fuego Interior (Tucuman) — PENDING
5. Sabios de La Docta (Cordoba) — PENDING
6. La Sombra (Cordoba) — PENDING
7. Mercaderes del Rio (Rosario) — PENDING
8. Mortifagos (Rosario) — PENDING
9. Guardia Real (Buenos Aires) — PENDING

## Iris + Sodium Crash History

| Iris | Sodium | Result | Missing Class |
|---|---|---|---|
| 1.8.12 | 0.8.12 | CRASH | `SodiumGameOptions$PerformanceSettings` |
| 1.8.12 | 0.6.0 | CRASH | `SpriteUtil` |
| 1.8.0 | 0.8.12 | CRASH | `SodiumGameOptions$PerformanceSettings` |
| **1.8.0** | **0.6.0** | **NOT TESTED** | Original matching pair |

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
