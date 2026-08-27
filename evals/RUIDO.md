# El piso de ruido del aparato

Cuánto se mueve el puntaje **cuando el backlog no se movió**. Sin ese número, un delta entre dos
rondas no se puede leer: no se sabe si el backlog mejoró o si el aparato tiene ese temblor.

El caso anterior lo pagó sin saberlo. Sus nueve filas leyeron `8,25 → 7,75` como una regresión y
`8,0 · 8,0 · 8,0` como estabilidad. Si el aparato se mueve medio punto por sí solo, las dos lecturas
son la misma lectura, y ninguna de las dos es un hallazgo. Nadie lo comprobó porque nadie corrió dos
veces el mismo SHA.

**La resolución del instrumento es el rango del total sobre el mismo SHA.** Un cambio menor que la
resolución no se reporta como mejora ni como regresión: se reporta como *sin señal*.

## Protocolo

Se mide **una vez por lock de rúbrica**, no una vez por ronda. El ruido es una propiedad de la vara,
no del backlog: mientras `./evals/rubric-lock.sh` devuelva el mismo lock, el número sigue valiendo.
Cuando el lock se mueve, esta medición caduca con él.

1. **Congela el SHA.** El mismo commit para las tres corridas. Nada se corrige entre una y otra: la
   corrección durante la medición destruye la medición, igual que en una ronda normal.
2. **k = 3 por agente.** Los tres agentes de persona y el agregador, tres veces cada uno, en
   **sesiones independientes**. Una corrida que ve la anterior no es una segunda medición: es la
   primera, confirmada.
3. **Anota el lock** que devuelve `./evals/rubric-lock.sh` al empezar y al terminar. Si no coinciden,
   la medición se descarta.
4. **Registra dos niveles**, no uno:
   - el **veredicto** de cada persona en cada corrida, y
   - las **celdas** de su tabla de cobertura que cambiaron de valor entre corridas.

   Dos corridas pueden coincidir en el veredicto y discrepar en cuatro celdas. Esa discrepancia
   también es ruido, y es la que se va a mover la ronda siguiente: el veredicto derivado la absorbe
   hoy y la suelta en cuanto una celda cruce el umbral de una regla.
5. **Publica el rango**, no el promedio. El promedio esconde exactamente lo que se está midiendo.

**Las corridas de calibración no puntúan.** El puntaje de una ronda sale de su corrida oficial. Las
otras dos miden el instrumento, no el backlog, y promediarlas para cruzar el gate sería usar la
medición del error para bajar la vara.

## Medición vigente

**No medida.** El backlog está vacío: no hay artefacto que puntuar, así que no hay nada que medir
tres veces. Se mide en la primera corrida con backlog no vacío, **antes** de corregir nada — porque
después de la primera corrección ya no existe el SHA sobre el que medirla.

| | Corrida A | Corrida B | Corrida C | Rango |
|---|---|---|---|---|
| Rosa — veredicto | — | — | — | — |
| Rosa — celdas que cambiaron | — | — | — | — |
| Elena — veredicto | — | — | — | — |
| Elena — celdas que cambiaron | — | — | — | — |
| Kevin — veredicto | — | — | — | — |
| Kevin — celdas que cambiaron | — | — | — | — |
| D1 | — | — | — | — |
| D2 | — | — | — | — |
| D3 | — | — | — | — |
| D4 | — | — | — | — |
| **Total** | — | — | — | **—** |

SHA medido: `—` · lock: `—` · fecha: `—`

**Resolución del aparato: —.** Hasta que ese número exista, ninguna fila de
[`HISTORY.md`](HISTORY.md) puede afirmar que un delta es una mejora, y las que lo afirmen se leen
como lo que son: una hipótesis sin instrumento.
