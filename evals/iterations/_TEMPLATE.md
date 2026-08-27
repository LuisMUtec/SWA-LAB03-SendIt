# Iteración NN — AAAA-MM-DD

Evaluado: [`redale/R-requerimientos/backlog.md`](../../redale/R-requerimientos/backlog.md)
@ `‹sha-corto›`

Rúbrica: [`evals/README.md`](../README.md) · `sendit-eval v‹x.y.z›` · lock `‹12 hex›`, verificado al
terminar con `./evals/rubric-lock.sh --verify ‹lock›`. Nada aterrizó a mitad de la corrida / *(o: qué
aterrizó)*.

Piso de ruido vigente para este lock: `‹resolución›` — ver [`RUIDO.md`](../RUIDO.md). Un delta menor
que ese número contra la ronda anterior se reporta *sin señal*, no como mejora ni como regresión.

## Puntaje

| Dim | Pts | Obtenido | Por qué |
|---|---|---|---|
| D1 Satisfacción de las personas | 3 | — | — |
| D2 Ajuste al problema | 3 | — | — |
| D3 Cobertura de seguridad y consistencia | 2 | — | — |
| D4 Coherencia del backlog | 2 | — | — |
| **Total** | **10** | **—** | |

**Gate ≥ 8:** PASA / NO PASA

## Veredictos de persona

Los tres agentes corrieron por separado, cada uno contra su archivo de persona y el backlog. **El
veredicto no lo eligió el agente: se derivó de su tabla de cobertura** con las cinco reglas en orden
de la rúbrica, y el agregador volvió a derivarlo para comprobarlo. Cada celda `cubierto` o `parcial`
lleva su ID **y el título citado textual**; una cita que no aparece literal en el backlog convierte la
celda en `descubierto`.

Se pega la tabla de cada agente tal cual. Debajo, la regla que disparó.

### Rosa — `Funciona` / `Funciona con reservas` / `No funciona` (resta X)

| Paso o ramo | ID | Título citado textual | Celda |
|---|---|---|---|
| — | — | — | — |

- **Permiso roto:** no / sí — ‹ID y cuál›
- **Regla que disparó:** ‹N›, por la fila ‹cuál›
- **Derivación reverificada por el agregador:** coincide / **no coincide** — ‹qué dijo la tabla y qué
  escribió el agente; si no coincide vale la tabla y es defecto de la evaluación, no de D1›
- **Cuando sale mal:** qué ítems cubren la retención sin explicación, el plazo y la devolución — o
  qué tramo queda descubierto.
- **Qué me frustra:** —
- **Comprobado y no deducido:** lo que se revisó y deliberadamente no restó, para que la ausencia de
  deducción sea una decisión y no un olvido.

### Elena — `Funciona` / `Funciona con reservas` / `No funciona` (resta X)

| Paso o ramo | ID | Título citado textual | Celda |
|---|---|---|---|
| — | — | — | — |

- **Permiso roto:** no / sí — ‹ID y cuál›
- **Regla que disparó:** ‹N›, por la fila ‹cuál›
- **Derivación reverificada por el agregador:** coincide / **no coincide** — ‹qué dijo la tabla y qué
  escribió el agente; si no coincide vale la tabla y es defecto de la evaluación, no de D1›
- **Cuando sale mal:** el viaje en vano, el documento vencido, los treinta soles de diferencia.
- **Qué me frustra:** —
- **Comprobado y no deducido:** lo que se revisó y deliberadamente no restó, para que la ausencia de
  deducción sea una decisión y no un olvido.

### Kevin — `Funciona` / `Funciona con reservas` / `No funciona` (resta X)

| Paso o ramo | ID | Título citado textual | Celda |
|---|---|---|---|
| — | — | — | — |

- **Permiso roto:** no / sí — ‹ID y cuál›
- **Regla que disparó:** ‹N›, por la fila ‹cuál›
- **Derivación reverificada por el agregador:** coincide / **no coincide** — ‹qué dijo la tabla y qué
  escribió el agente; si no coincide vale la tabla y es defecto de la evaluación, no de D1›
- **Cuando sale mal:** la operación cortada, el reintento, la operación simultáneamente retenida y
  pagada.
- **Qué me frustra:** —
- **Comprobado y no deducido:** lo que se revisó y deliberadamente no restó, para que la ausencia de
  deducción sea una decisión y no un olvido.

`D1 = 3 − Σ(deducciones) = —`

## D2 — censo del ajuste al problema

| Rasgo | Ítems que se vuelven falsos si el rasgo desaparece | Pts |
|---|---|---|
| Cruza una frontera | — | — |
| Cruza una moneda | — | — |
| Termina en efectivo, sin banco, en manos de un tercero | — | — |

Ítems que sobreviven intactos a la desaparición de los tres rasgos: **— de —**.

## Hallazgos del agregador

| Dim | Hallazgo | Dónde | Deducción |
|---|---|---|---|
| — | — | — | — |

**Techos aplicados:** tensiones sin decidir (— de 6) · prioridad con gradiente (sí / no) ·
conformidad unánime con tensión abierta (sí / no).

## Rebarridos de propagación

Se registran los cuatro aunque no encuentren nada. Un rebarrido vacío es un resultado; uno que nadie
corrió, no.

| Variante | Cómo se buscó | Encontrado |
|---|---|---|
| Cifra sin productor | — | — |
| Acto sin consumidor | — | — |
| Reparación en la altitud equivocada | — | — |
| Estado sin terminador | — | — |

## A corregir antes de la próxima iteración

1. —

## Propagación pendiente

Qué pasos aguas abajo de R.E.D.A.L.E. quedaron afirmando lo viejo después de las correcciones de esta
ronda. Una fila por paso alcanzado; los pasos que no existen todavía se anotan igual, porque nacen ya
debiendo esta deuda.

| Paso | Qué afirma que ya no es cierto | Qué lo dejó desfasado | Estado |
|---|---|---|---|
| [`E` estimar](../../redale/E-estimar/) | — | — | pendiente / cerrado |
| [`D` diseñar el servicio](../../redale/D-disenar-servicio/) | — | — | — |
| [`A` armar el modelo de datos](../../redale/A-armar-modelo-datos/) | — | — | — |
| [`L` listar los componentes](../../redale/L-listar-componentes/) | — | — | — |

Lo que queda en `pendiente` se copia a [`redale/ITERACIONES.md`](../../redale/ITERACIONES.md) como
parte de la propagación de esta iteración. Una deuda que solo vive acá se pierde en la ronda siguiente.

**Sin verificar.** El puntaje de arriba vale para `‹sha-corto›`. Las correcciones aplicadas después de
puntuar no se han medido: lo que se afirma es que N defectos nombrados están cerrados en el texto; lo
que **no** se afirma es que cerrarlos no haya introducido otros.
