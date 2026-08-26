# Valttheros - Plan de Comunidades y Razas

## Resumen

Crear **9 comunidades/races** distribuidas en las 5 provincias del modpack, usando mobs existentes (Mowzie's Barakoa, Goety Cultists, Iron's Spells Wizards, Villagers). Cada comunidad tiene dialogo (VNDialog), misiones (FTB Quests), comercio y un asentamiento basado en estructuras MVS existentes.

**Estado actual**: Prototype Estero (2 comunidades) como validacion del sistema.

---

## Mapa de Comunidades

| # | Comunidad | Mobs | Provincia | Coords | Alianza |
|---|-----------|------|-----------|--------|---------|
| 1 | Tribu Barakoa | Mowzie's Barakoa | Estero | X=500 Z=500 | Neutral -> Aliada |
| 2 | Culto de la Llama | Goety Warlock/Heretic | Estero | X=520 Z=530 | Enemiga |
| 3 | Agricultores del Norte | Villagers + Priest | Tucuman | X=1000 Z=-300 | Aliada |
| 4 | Fuego Interior | Goety Heretics/Maverick | Tucuman | X=900 Z=-200 | Semi-hostil |
| 5 | Sabios de La Docta | Iron's Wizards | Cordoba | X=-800 Z=600 | Aliada |
| 6 | La Sombra | Goety Sorcerers | Cordoba | X=-850 Z=650 | Hostil |
| 7 | Mercaderes del Rio | Villagers + Traders | Rosario | X=300 Z=-700 | Aliada |
| 8 | Mortifagos | Iron's Necromancer | Rosario | X=310 Z=-720 | Enemiga |
| 9 | Guardia Real | Priests + Villagers | Buenos Aires | X=5 Z=5 | Aliada (central) |

---

## Mapa de Alianzas

```
ALIADOS                          NEUTRALES                    RIVALES
─────────────────────────────────────────────────────────────────────
Guardia Real (BA) ─── aliados ─── Mercaderes del rio (Rosario)
    │                                  │
    │                          comercian con todos
    │
    ├── aliados ─── Sabios de Cordoba
    │
    ├── aliados ─── Agricultores (Tucuman)
    │
    └── rivales ─── Cultistas del Vacio (Tucuman)
                         │
                         └── rivales ─── Sacerdote Negro (Estero)

Barakoa (Estero) ── rivales ── Sacerdote Negro (Estero)
Mortifagos (Rosario) ── rivales ── Mercaderes del rio
```

---

## Detalle por Comunidad

### 1. Tribu Barakoa (Estero) - PROTOTYPE

- **Mobs**: Mowzie's Barakoa Seer, Fury, Horn
- **Lider**: "Tata Fawna" (Barakoa Seer, nombrado)
- **Tema**: Tribu selvatica con mascaras, hostil al principio, se alian despues de probar honor
- **Estructuras MVS**: jungle_tree, campsite, jungle_tower
- **Misiones**: 3 quests (probar honor, recuperar mascara sagrada, defender tribu)
- **Dialogos**: 4-8 entries con branching (VNDialog)
- **Comercio**: Recompensas via loot tables al completar misiones

### 2. Culto de la Llama (Estero) - PROTOTYPE

- **Mobs**: Goety Warlock + Heretic (hostiles)
- **Lider**: Heresiarch (boss en estructura Goety existente)
- **Tema**: Secta oscura que corrompe la region de Estero
- **Estructuras MVS**: Goety Dark Manor o Ruined Monastery existentes
- **Misiones**: 3 quests (infiltracion, robar infernal tome, derrotar culto)
- **Dialogos**: 4-6 entries con branching (VNDialog)
- **Comercio**: Goety bartering via servant (emerald -> items oscuros)

### 3. Agricultores del Norte (Tucuman)

- **Mobs**: Villagers renombrados + Iron's Spells Priest
- **Lider**: "Don Azucarero" (Villager nombrado)
- **Tema**: Comunidad agricola de azucar, pacifica
- **Estructuras MVS**: barn, windmill, wheat_farm
- **Misiones**: 3 quests (cosechar, proteger de pillagers, abrir ruta)
- **Comercio**: Vanilla villager trades (sugar, bread, tools)

### 4. Fuego Interior / Cultistas de Goety (Tucuman)

- **Mobs**: Goety Heretics + Maverick (semi-hostiles)
- **Lider**: "El Hereje Mayor" (Heresiarch)
- **Tema**: Culto al fuego nether, transforman aldeanos
- **Estructuras MVS**: Goety Sorcerous Keep + campsite
- **Misiones**: 3 quests (rescatar aldeano, encontrar tomo, detener ritual)
- **Comercio**: Goety bartering (Maverick Servant)

### 5. Sabios de La Docta (Cordoba)

- **Mobs**: Iron's Spells Pyromancer + Cryomancer + Apothecarist
- **Lider**: "Gran Maestro Arcano" (Pyromancer nombrado)
- **Tema**: Universidad de magia, wizards comercian scrolls
- **Estructuras MVS**: cathedral + lecturn_garden
- **Misiones**: 4 quests (aprendizaje, recolectar ink, libro antiguo, defensa)
- **Comercio**: Iron's Spells built-in wizard trading

### 6. La Sombra (Cordoba) - Subterraneo

- **Mobs**: Goety Sorcerer + Conquillagers
- **Lider**: "El Consejero Sombrio" (Sorcerer nivel 5)
- **Tema**: Red de espionaje bajo la universidad
- **Estructuras MVS**: Iron's Spells Catacombs + Goety crypt
- **Misiones**: 3 quests (descubrir tunel, robar artefacto, expusar)
- **Comercio**: Bartering exclusivo (items raros, mapas)

### 7. Mercaderes del Rio (Rosario)

- **Mobs**: Villagers renombrados + Wandering Traders
- **Lider**: "Capitan Flotante" (Villager nombrado)
- **Tema**: Comercio fluvial, mercado colorido
- **Estructuras MVS**: small_ship + stalls (4 variantes)
- **Misiones**: 3 quests (conseguir peces, escort barco, ruta comercial)
- **Comercio**: Vanilla trades mejorados

### 8. Mortifagos (Rosario) - Rival

- **Mobs**: Iron's Spells Necromancer + Cultist
- **Lider**: "El Conde Muerto" (Necromancer nombrado)
- **Tema**: Muertos en estadio abandonado, hostiles
- **Estructuras MVS**: Custom arena/stadium elements
- **Misiones**: 3 quests (sobrevivir oleadas, recuperar souls, derrotar conde)
- **Comercio**: Blood scrolls limitado

### 9. Guardia Real / Consejo del Alba (Buenos Aires)

- **Mobs**: Iron's Spells Priest + Villagers + Iron Golem
- **Lider**: "Comandante Vael" (Villager Brute, ya existente)
- **Tema**: Ultima defensa, centro de misiones principales
- **Estructuras MVS**: fortress + village elements
- **Misiones**: 4 quests (Consejo, Obelisco, MOUSER, ending)
- **Comercio**: Trades premium (late-game items)

---

## Stack Tecnico

| Sistema | Mod/Herramienta | Uso |
|---------|----------------|-----|
| Dialogo visual | VNDialog 1.0.6 | Dialogos con retratos, branching, commands |
| Misiones | FTB Quests 2101.1.33 | Quest book UI con objetivos y recompensas |
| NPC Magos | Iron's Spells 3.16.3 | Pyromancer/Cryomancer/Priest con trading built-in |
| NPC Cultistas | Goety 3.1.2 | Warlock/Heretic con bartering via emerald |
| NPC Tribu | Mowzie's Mobs 1.8.2 | Barakoa (Seer/Fury/Horn/Mane) |
| NPC Civiles | Vanilla | Villagers nombrados con trades custom |
| Spawning | Datapack functions | `summon` con CustomName en load.mcfunction |
| Recompensas | Loot tables datapack | Tablas por faccion |
| Progresion | Advancements datapack | Logros de alianza/derrota |
| Estructuras | MVS 5.0.14 | Reutilizar houses, towers, stalls, etc. |
| Retratos | Pixel art generado | 128x128 PNGs via System.Drawing |

---

## Orden de Ejecucion (Prototype Estero)

### Fase 1: Datapack Base
1. Crear `minecraft/datapacks/valttheros_communities/pack.mcmeta`
2. Crear tags `data/minecraft/tags/function/load.json` y `tick.json`
3. Crear `data/valttheros/function/load.mcfunction` (init scores, teams)
4. Crear `data/valttheros/function/tick.mcfunction` (deteccion proximidad)
5. Crear `data/valttheros/function/spawn_estero_barakoa.mcfunction`
6. Crear `data/valttheros/function/spawn_estero_cultist.mcfunction`
7. Crear `data/valttheros/function/npc_proximity_barakoa.mcfunction`
8. Crear `data/valttheros/function/npc_proximity_cultist.mcfunction`

### Fase 2: VNDialog Dialogues
9. Crear `minecraft/resourcepacks/valttheros_dialogues/pack.mcmeta`
10. Crear `assets/dialog/lang/en_us.json` (translation keys)
11. Crear `data/dialog/dialogs/barakoa_tribe.json` (8 entries)
12. Crear `data/dialog/dialogs/culto_llama.json` (6 entries)

### Fase 3: Pixel Art Portraits
13. Crear script C# para generar portraits 128x128
14. Generar `barakoa_seer.png`
15. Generar `barakoa_fury.png`
16. Generar `cultist_warlock.png`
17. Generar `cultist_heretic.png`

### Fase 4: FTB Quests
18. Crear `config/ftbquests/quests/chapters/barakoa_tribe.snbt` (3 quests)
19. Crear `config/ftbquests/quests/chapters/culto_llama.snbt` (3 quests)

### Fase 5: Loot Tables & Advancements
20. Crear `data/valttheros/loot_table/community/barakoa_reward.json`
21. Crear `data/valttheros/loot_table/community/cultist_reward.json`
22. Crear `data/valttheros/advancement/alliance_barakoa.json`
23. Crear `data/valttheros/advancement/cultist_defeated.json`

### Fase 6: Actualizar Documentacion
24. Actualizar `PROGRESS.md` con nuevo estado
25. Actualizar `mmc-pack.json` si es necesario

### Fase 7: Test
26. Lanzar PrismLauncher, cargar mundo, verificar:
    - Datapack carga sin errores (`/reload`)
    - NPCs aparecen en Estero con nombres
    - VNDialog abre al interactuar
    - FTB Quests muestra nuevos capitulos
    - No crashea el juego

---

## Notas Tecnicas

- **VNDialog**: Los dialogos se activan via `/dialog show <id>`. Se puede trigger via command block cercano al NPC o via datapack tick function que detecte proximidad.
- **Mowzie's Barakoa**: No tienen trading nativo. Se simula via loot tables que se dan al completar misiones (command: `loot give @s valttheros:community/barakoa_reward`).
- **Goety Cultists**: El bartering nativo funciona con servants aliados. Para el prototype, los cultistas son hostiles; el comercio se habilita despues de derrotar al boss (command: `summon goety:warlock_servant`).
- **Iron's Spells Wizards**: Trading nativo funciona. Solo necesitan ser nombrados y posicionados.
- **Portraits**: Generados via C# System.Drawing (sin dependencias externas), mismica tecnica que el title logo.

---

## Criterios de Exito (Prototype Estero)

- [ ] Datapack carga sin errores en `/reload`
- [ ] 3 Barakoa aparecen en X=500 Z=500 con nombres correctos
- [ ] 2 Cultistas aparecen en X=520 Z=530 con nombres correctos
- [ ] Acercarse a Tata Fawna -> VNDialog abre con dialogo barakoa
- [ ] Acercarse a Sombras Veloz -> VNDialog abre con dialogo cultista
- [ ] Completar mision Barakoa -> advancement "Alianza de Sangre" se desbloquea
- [ ] Completar mision Cultista -> advancement "Fin del Culto" se desbloquea
- [ ] FTB Quests muestra 2 capitulos nuevos con 6 quests
- [ ] Retratos pixel art aparecen en VNDialog
- [ ] El juego no crashea durante ninguna interaccion
