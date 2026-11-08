# Hoja de ruta de producto — Valttheros

## Visión

Una aventura RPG de fantasía regional con seis regiones, diez comunidades, personajes con los que hablar, pueblos encontrados en caminos y una historia principal sobre la Nube Dorada.

## Estado de la entrega 1.1.0

- Fuente editable y build reproducible del mod de comunidades en `content/valttheros_communities` y `tools/build_communities.ps1`.
- Diez plantillas NBT reales generadas por `tools/generate_settlement_templates.ps1`; antes los pools apuntaban a plantillas ausentes.
- Pueblo inicial generado sobre la altura del punto de entrada, nueve pueblos narrativos colocados a la altura de superficie y seis pools regionales para chunks nuevos.
- Casas, plazas, caminos en cruz, aldeanos de diálogo y guardianes visibles de criaturas de los mods.
- Tres linajes seleccionables, una de cuatro afinidades elementales aleatoria tras la selección y una habilidad activable con enfriamiento.
- Reputación simple: atacar a una comunidad la primera vez deja al jugador marcado como enemigo y hace aparecer un justiciero.
- Diálogos VNDialog y retratos incluidos en el mod. Capítulos y campaña FTB Quests conservados.
- Exportación limpia versionada en `dist/Valttheros-1.1.0.zip`.

## Validación pendiente

Prism no pudo iniciar el juego desde este entorno: la carpeta de datos configurada es de solo lectura y los intentos en un directorio temporal no pudieron descargar por falta de credenciales de red. Por eso todavía falta iniciar una partida nueva y comprobar visualmente plantillas, diálogos, afinidades, habilidades, misiones y reputación.

## Fases siguientes

1. Abrir en Prism desde un perfil con carpeta de datos escribible y crear un mundo nuevo.
2. Ajustar colocación del terreno y frecuencia de los seis pools según el recorrido.
3. Verificar que cada guardián permite hablar y que los diálogos no se superponen con otras interfaces.
4. Ampliar plazas, caminos, granjas, rutinas y variedad de edificios.
5. Ajustar balance, compatibilidad y rendimiento; revisar licencias antes de publicar.

Las aldeas actuales son compactas y no evolucionan físicamente por etapas. Los linajes y el despertar elemental son un sistema propio del pack; no se añadió el JAR externo The Awakening.
