# Feedback de revisión — 2026-11-08

Revisión de la versión 1.1.6 sobre el estado guardado en esta instancia. Este documento registra lo comprobado y los problemas que siguen abiertos; no afirma que las funciones no verificadas estén resueltas.

## Confirmado

- El mundo limpio `test12` aceptó la conexión del jugador en `(500.5, 68.0, 500.5)` tras fijar `spawnRadius` en cero.
- El registro cargó The Awakening 1.23.3, VNDialog 1.0.6 y el mod de comunidades. FTB Quests informó 16 capítulos y 56 misiones cargadas.
- En la revisión manual anterior apareció el selector de linaje.

## Pendiente de corregir o verificar

1. **The Awakening:** al escoger Nácar, el diálogo avanzó, pero no se confirmó que se concediera el objeto de linaje ni un poder elemental. El panel de `K` apareció vacío. Verificar el comando real de asignación contra la API de la versión instalada y confirmar el poder en una partida limpia.
2. **Goety:** `latest.log` registra a las 02:08:33 un `NullPointerException` en `SEHelper.load` al procesar el paquete `goety:clientbound` (`tag` nulo). Ocurrió después de que el servidor registrara el ingreso del jugador; investigar compatibilidad/estado de Goety y comprobar que no afecte la sesión.
3. **Carteles de estructuras:** durante la generación, Minecraft reportó repetidos errores de lectura de líneas de carteles (`Not a string: null` / `Input is not a list of 4 elements`). Corregir la serialización de carteles en las plantillas NBT para eliminar el ruido y preservar el texto.
4. **Pueblos y NPC:** la existencia de las plantillas y sus referencias no demuestra que los asentamientos aparezcan en ubicaciones válidas ni que los habitantes personalizados conversen dentro del juego. Revisar las plantillas generadas y hacer una inspección visual e interactiva en un mundo nuevo.
5. **Cinemática y tutorial:** comprobar en una partida limpia que la cinemática termine, el poder quede asignado y el tutorial de controles aparezca una sola vez.

## Próxima verificación recomendada

Iniciar una partida nueva con 1.1.6; completar el selector; revisar inventario y panel de The Awakening; recorrer el pueblo inicial y hablar con varios NPC; conservar `latest.log` y `debug.log` para confirmar que no reaparecen excepciones ni errores de carteles.
