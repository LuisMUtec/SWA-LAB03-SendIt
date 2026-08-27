# Historial de iteraciones

Una fila por iteración. El detalle vive en [`iterations/`](iterations/); acá solo el puntaje, el
veredicto del gate y qué movió el número.

**La columna `Lock` es la que hace comparables a dos filas.** La rúbrica es [`README.md`](README.md)
más su forma compilada [`rubric.json`](rubric.json), y `./evals/rubric-lock.sh` las resume en un
identificador corto. Dos filas con el mismo lock se midieron contra la misma vara. Dos filas con lock
distinto **no son comparables**, y la fila que lo movió tiene que decir qué cambió en la vara — o
declarar *lock movido, sin cambio de vara* cuando la edición fue cosmética, que es una afirmación
firmada y no un silencio.

**Un delta menor que el piso de ruido no es un hallazgo.** Cuánto se mueve el aparato por su cuenta
está en [`RUIDO.md`](RUIDO.md), se mide una vez por lock, y hasta que exista ese número ninguna fila
puede afirmar que subir o bajar medio punto significa algo.

| Iteración | Fecha | Lock | D1 /3 | D2 /3 | D3 /2 | D4 /2 | Total /10 | Gate | Qué cambió |
|---|---|---|---|---|---|---|---|---|---|
| — | — | — | — | — | — | — | — | — | *Fila de ejemplo. Se reemplaza con la iteración 01: enlace a `iterations/AAAA-MM-DD-01.md`, el lock contra el que se midió, los cuatro puntajes, PASA / NO PASA, y qué corrección movió el total — no qué se hizo, sino qué lo movió* |
