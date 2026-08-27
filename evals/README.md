# EVAL — backlog de requerimientos de SendIt

Aparato de evaluación del paso **R** de [R.E.D.A.L.E.](../redale/README.md). Se corre a mano.

El [enunciado](../docs/LAB-03-ARQ-2026.2.md) pide un *EVAL con resultado de requerimientos* y fija el
umbral en **8/10**. Eso decide el alcance de este documento: se puntúa el backlog, y nada más.

## Entradas

| Entrada | Papel |
|---|---|
| [`redale/R-requerimientos/backlog.md`](../redale/R-requerimientos/backlog.md) | **Lo único puntuado.** El único documento con autoridad sobre qué debe hacer el sistema |
| [`personas/Rosa.MD`](../personas/Rosa.MD) · [`Elena.MD`](../personas/Elena.MD) · [`Operario.MD`](../personas/Operario.MD) | Las lee cada agente de persona: la suya y el backlog, nada más |
| [`personas/README.md`](../personas/README.md) | La lee el agregador. De ahí salen las seis tensiones que D4 exige decididas y la designación del usuario modelo |
| [`docs/LAB-03-ARQ-2026.2.md`](../docs/LAB-03-ARQ-2026.2.md) | La lee el agregador. Fija el problema contra el que mide D2 y nombra las dos exigencias que cuenta D3 |

### Los demás pasos de R.E.D.A.L.E. no se puntúan

`E`, `D`, `A`, `L` y `E` son entregable exigido, no puntaje. El enunciado pide el EVAL **con resultado
de requerimientos**; una estimación de servidores o un diagrama de componentes no se juzgan contra esta
rúbrica y no suman ni restan en ninguna de sus cuatro dimensiones.

Lo que impide que diverjan del backlog no es puntuarlos, sino **una regla de dirección: los
requerimientos bajan, nunca suben.** Ningún paso aguas abajo puede introducir un comportamiento que el
backlog no declare. Si `D` diseña un endpoint que responde algo que ningún título exige, o `A` guarda un
campo que ningún título obliga a conocer, el defecto **es del backlog** y se cobra en D4 como
*decisión sin requerimiento*. La corrección va arriba —se agrega el título y se vuelve a puntuar—,
nunca abajo.

La regla se paga sola: convierte cualquier invención aguas abajo en una deducción de la única
dimensión que sí se puntúa, de modo que la coherencia entre pasos deja de depender de la buena
voluntad de quien los escribe.

## Rúbrica — 10 puntos

| Dim | Pts | Qué mide | Juzga |
|---|---|---|---|
| **D1** Satisfacción de las personas | 3 | El flujo principal de [Rosa](../personas/Rosa.MD), [Elena](../personas/Elena.MD) y [Kevin](../personas/Operario.MD) corre de extremo a extremo en el backlog, **incluido cuando sale mal**. 1 pt por persona, **solo deducciones** | Los 3 agentes de persona |
| **D2** Ajuste al problema | 3 | Ataca la remesa internacional —dinero que cruza una frontera y una moneda, y termina en efectivo en la mano de alguien sin banco— y no un «enviar plata» genérico | Agregador |
| **D3** Cobertura de seguridad y consistencia | 2 | Los dos requerimientos que el enunciado nombra, con medida y no como adjetivo | Agregador |
| **D4** Coherencia del backlog | 2 | Sin huérfanos ni duplicados encubiertos; títulos atómicos y entendibles **sin descripción**; las tensiones entre personas decididas y no esquivadas; prioridad asignada | Agregador |

**Gate: ≥ 8/10.** Se pueden perder dos puntos, no más. Un puntaje por debajo del gate no baja la vara:
se corrige el backlog y se vuelve a evaluar.

**La aritmética del gate no admite un camino barato.** Si el agregador entrega sus siete puntos
perfectos —cosa que no ocurrió una sola vez en las nueve rondas del caso anterior— dos personas pueden
devolver `No funciona` y el total sigue siendo exactamente 8. En cualquier otro escenario, un solo
`No funciona` obliga a que el agregador ceda como máximo un punto entre D2, D3 y D4. El gate se alcanza
por acuerdo de los dos lados o no se alcanza.

## La regla de asimetría

**Un agente de persona solo puede restar de D1. Nunca sumar.** Si ninguno objeta, D1 vale 3.

No es una cortesía metodológica, es una consecuencia de qué puede observar cada quien. Un agente lee su
persona y el backlog: ve un ángulo del problema y no ve el conjunto. Si además pudiera sumar, una
lectura entusiasta compraría puntos que ninguna otra lectura está en condiciones de contestar, y D1
terminaría midiendo la generosidad del agente en lugar de la calidad del backlog. Restringido a restar,
el agente solo puede aportar evidencia de un tipo —*acá se me corta el día*— que es exactamente el tipo
de evidencia que nadie más puede producir.

Del mismo lado: **un puntaje alto debe costar.** El máximo de D1 no se gana, se conserva; se pierde en
cuanto alguien demuestre una falla concreta con una cita concreta.

## Quién juzga qué

| Pregunta | Quién responde | Por qué |
|---|---|---|
| ¿Este backlog le resuelve el día a esta persona? | Su agente | Solo quien opera desde esa posición reconoce si el comportamiento enunciado le sirve |
| ¿Ataca la remesa internacional o un envío genérico? | Agregador | Cada persona ve un rasgo del problema; ninguna ve los tres |
| ¿Seguridad y consistencia están enunciadas con medida? | Agregador | La forma del enunciado es ajena a la perspectiva de cualquier persona |
| ¿Hay huérfanos, duplicados encubiertos o títulos comodín? | Agregador | Requiere el conjunto entero a la vista |
| ¿Las seis tensiones están decididas? | Agregador | Cada agente ve su lado de la tensión y lo da por bueno; ninguno ve el conflicto |
| ¿La prioridad está bien asignada? | Agregador | Es una comparación entre ítems, no dentro de uno |
| ¿Algún paso aguas abajo afirma lo viejo? | Agregador | La propagación solo es visible desde fuera del paso corregido |

## Cobertura contra un título

El enunciado prohíbe describir los requerimientos: **solo un título claro y entendible.** Eso deja al
agente de persona con un problema real, y hay que resolverlo antes de que alguien puntúe: ¿qué significa
que un título *cubra* un paso de mi flujo, si el título es todo lo que hay?

**Un título cubre un paso cuando pasa las tres pruebas y, leído contra ese paso, lo decide.**

| Prueba | Pasa | No pasa |
|---|---|---|
| **Nombra un hecho, no un área** | «Fijar en soles el monto que recibe la destinataria en el momento del pago» | «Gestión de tipo de cambio» — un sistema que no hace nada de eso también podría llevar ese título |
| **Es negable** | Se puede describir un sistema concreto que lo incumple | «Seguridad de extremo a extremo» — ningún sistema lo incumple y ninguno lo cumple; no exige nada |
| **Una sola lectura** | Dos lectores del enunciado y de las personas lo entienden igual | «Verificar la identidad del destinatario» — con o sin documento vigente son dos sistemas distintos, y el título no dice cuál |

Decidir el paso significa que el título determina el resultado observable que ese paso necesita. Si lo
determina en parte —cubre el monto pero no el momento en que queda fijo— la cobertura es parcial y el
veredicto no puede ser mejor que `Funciona con reservas`.

### Título comodín

Un título que falla la prueba 1 o la 2 es un **título comodín**: cubre cualquier cosa y por lo tanto no
cubre ninguna. Frente a él el agente hace dos cosas, y las dos:

1. **Cuenta el paso como no cubierto.** Un comodín no es cobertura débil; es ausencia de cobertura con
   apariencia de presencia, que es peor, porque nadie va a buscar el requerimiento que falta.
2. **Lo reporta por su nombre**, con el identificador del ítem. El agregador lo cobra en D4 como
   *título no entendible*.

Un título que falla la prueba 3 no es comodín sino **ambigüedad no marcada**: el título dice algo, pero
dice dos cosas. También lo cobra D4, y su corrección no es reescribirlo mejor sino marcarlo con
`[CLARIFY: …]` y decidirlo.

**Un mismo título puede costar en dos dimensiones a la vez, y es deliberado.** Un comodín que sostiene
el único paso donde Elena cobra falla de dos formas independientes: le deja el día sin resolver a
alguien (D1) y vuelve el backlog ilegible para cualquiera (D4). Cobrarlo una sola vez obligaría a
elegir cuál de las dos fallas se perdona.

## Protocolo del agente de persona

Se corre **una vez por persona, por separado**. Cada agente vive en
[`.claude/agents/`](../.claude/agents/) y lee **exactamente dos archivos**: el suyo en
[`personas/`](../personas/) y el [backlog](../redale/R-requerimientos/backlog.md). Nada más: ni las
otras personas, ni [`personas/README.md`](../personas/README.md), ni los veredictos ajenos, ni el
historial.

La exclusión de `personas/README.md` es la que más cuesta explicar y la que más importa: ese archivo
contiene las seis tensiones y el ángulo de las otras dos personas. Un agente que lo lee deja de
reclamar y empieza a negociar —«entiendo que Kevin necesita tiempo»— y ahí se pierde la única señal que
el agente existe para producir. Las tensiones las decide el backlog y las juzga el agregador, no la
persona que las sufre.

Cada agente responde, en este orden:

1. **¿Mi flujo principal corre de extremo a extremo, incluido cuando sale mal?** Se responde en una
   **tabla de cobertura**, no en prosa: una fila por paso del flujo y una por cada ramo de *cuando sale
   mal*. Cada fila lleva el ítem que la sostiene —identificador **y título citado textual**— y una de
   tres celdas: `cubierto`, `parcial`, `descubierto`. Un flujo cubierto solo en su camino feliz no
   aprueba esta pregunta: el *cuando sale mal* de cada persona es parte del flujo.
2. **¿Qué me frustra?** Lo que el backlog decide en mi contra, lo que deja sin decidir para que lo
   absorba yo, y cualquier título que rompa mis permisos. Lo último va además en un campo aparte
   —**permiso roto: sí / no**— porque una regla lo lee.
3. **Veredicto derivado.** El agente no lo elige: sale de la tabla.

### El veredicto se deriva de la tabla, no se elige

Un agente que lee, razona en prosa y después **elige** entre tres palabras está decidiendo dos cosas a
la vez —qué vio y cuánto pesa— y solo la primera es la que sabe hacer. La segunda es por donde entra el
temblor: la misma tabla produce `Funciona con reservas` una ronda y `No funciona` la siguiente sin que
el backlog se haya movido, y esa diferencia entra en el total indistinguible de una diferencia real.

Así que se parte en dos. El agente decide **celda por celda** —una pregunta chica, con una cita al
lado— y el veredicto lo produce una regla. **La duda vive en la celda:** entre `cubierto` y `parcial`
se elige `parcial` y se dice por qué. Lo que deja de existir es la duda sobre el veredicto.

Las reglas se aplican **en este orden** y decide la primera que dispara:

| # | Si | Veredicto | Resta |
|---|---|---|---|
| 1 | El campo de permisos dice `sí`: algún ítem le concede a alguien algo que este archivo de persona declara «nunca debe» | `No funciona` | 1 |
| 2 | Alguna fila de **paso del flujo principal** es `descubierto` | `No funciona` | 1 |
| 3 | **Todas** las filas de ramo son `descubierto` | `No funciona` | 1 |
| 4 | Alguna fila es `parcial`, o **alguna** fila de ramo es `descubierto` | `Funciona con reservas` | 0,5 |
| 5 | Ninguna de las anteriores | `Funciona` | 0 |

La forma compilada de estas reglas está en [`rubric.json`](rubric.json), y es la que entra en el lock.

**La cita sostiene la celda, y se verifica.** Una celda `cubierto` o `parcial` sin identificador **y sin
el título citado textual** no vale: se cuenta `descubierto`. Un título citado que no aparece literal en
el backlog tampoco es cita. Esa es la comprobación barata que separa una lectura de un recuerdo, porque
la decide `grep` y el agente no está en posición de discutirla.

**Un veredicto sin ninguna cita al backlog es inadmisible y cuenta como `No funciona`.** Una cita a un
identificador que no existe en el backlog tampoco es cita.

**El agente califica en las dos direcciones.** Resta por lo que genuinamente falla, y **no** resta por
lo que su archivo no pide, por alcance razonablemente diferido, ni por una redacción que él solo habría
formulado de otro modo. Un agente que deduce por todo convierte D1 en ruido y deja de distinguir la
ronda en que el backlog empeoró.

**Precondición: sin los tres veredictos no se emite total.** Si falta uno, D1 se declara no computable,
se informan D2, D3 y D4, y el total queda en blanco. No se sustituye el veredicto ausente por el
criterio del agregador.

## Cómo puntúa el agregador

**El agregador corre a ciegas del historial.** Mientras puntúa no lee [`HISTORY.md`](HISTORY.md) ni las
corridas anteriores. Es la misma razón por la que un agente de persona no lee los veredictos ajenos, y
acá pega más fuerte: un agregador que sabe que la ronda pasada dio 8,0 tiene un número al que volver, y
el ancla más barata de satisfacer es la que uno mismo puso la vez anterior. Lo que sí lee es la rúbrica
—esta— y [`rubric.json`](rubric.json), que la compila. El historial se consulta **después** de emitir el
puntaje, para escribir la fila.

### D2 — Ajuste al problema · 3 pts

El problema tiene tres rasgos, y el backlog vale por atacarlos, no por nombrarlos. **Un punto por
rasgo**, y cada rasgo se puntúa contra un censo: *si el rasgo desapareciera, ¿qué ítems del backlog
seguirían siendo palabra por palabra lo que necesita una transferencia doméstica entre dos cuentas de
banco en la misma moneda?*

| Rasgo | 1 pt | 0,5 pt | 0 pt |
|---|---|---|---|
| **Cruza una frontera** — dos jurisdicciones, dos reguladores, un corredor prefinanciado | Al menos un ítem se vuelve falso si el rasgo desaparece | El rasgo se toca de costado | Nombrado o ausente |
| **Cruza una moneda** — hay un momento en que la tasa se fija y alguien carga el movimiento entre ese momento y el cobro | ídem | ídem | ídem |
| **Termina en efectivo, sin banco, en manos de un tercero** — el último tramo no tiene pantalla y su registro contable no es nuestro | ídem | ídem | ídem |

El censo se anota en la corrida con su conteo. Un backlog cuya mayoría de ítems sobrevive intacta a la
desaparición de los tres rasgos describe un producto distinto del que pidió el enunciado, por más
correcto que sea cada ítem por separado.

### D3 — Cobertura de seguridad y consistencia · 2 pts

**Un punto cada una.** El enunciado las nombra a las dos; nombrarlas de vuelta no es cubrirlas.

| Pts | Estado |
|---|---|
| **1** | Al menos un ítem enuncia la garantía con una medida o un invariante que alguien puede declarar cumplido o incumplido, y el camino de falla está cubierto |
| **0,5** | Enunciada como comportamiento, pero sin medida ni invariante, o solo en el camino feliz |
| **0** | Enunciada como adjetivo —«el sistema debe ser seguro»— o ausente |

**La medida no siempre es un número.** Para la consistencia, la forma correcta es casi siempre un
invariante: *ninguna operación figura retenida y pagada a la vez*, *ningún envío se cobra dos veces*.
Un invariante es más fuerte que un porcentaje porque no depende del conjunto de casos que alguien haya
armado. Exigir un número donde corresponde un invariante degrada el requerimiento.

**El hint del enunciado sobre «diseñar bien el mecanismo de seguridad» no autoriza a meterlo en el
backlog.** El mecanismo se decide en [`D`](../redale/D-disenar-servicio/). Lo que el backlog debe decir
es qué tiene que garantizar ese mecanismo —quién no puede leer qué, quién no puede hacer qué sin dejar
rastro—, y eso es lo que D3 puntúa.

### D4 — Coherencia del backlog · 2 pts

Empieza en 2 y baja **0,25 por hallazgo independiente**, con piso 0.

| Hallazgo | Qué es |
|---|---|
| Huérfano | Un ítem que no sirve a ninguna de las tres personas ni a una exigencia explícita del enunciado |
| Decisión sin requerimiento | Un paso aguas abajo afirma un comportamiento que ningún título exige |
| Duplicado encubierto | Dos títulos que dicen lo mismo con otras palabras, o uno que es caso particular de otro |
| Título no entendible | Un **título comodín**, según las pruebas de arriba |
| Ambigüedad no marcada | Dos lecturas razonables y ningún `[CLARIFY: …]` |
| Título no atómico | Dos cosas que pueden ser verdaderas o falsas por separado bajo un identificador |
| Tensión esquivada | Una de las seis de [`personas/README.md`](../personas/README.md) que ningún ítem decide |
| Prioridad ausente | Un ítem sin prioridad |

**Techos duros.** Se aplican después de las deducciones y no se negocian:

- Si **dos o más** de las seis tensiones quedan sin decidir, **D4 no supera 1,0**. Una tensión sin
  decidir no es un hallazgo más: es la decisión que el backlog existía para tomar.
- Si **todos** los ítems comparten la misma prioridad, **D4 no supera 1,5**. Una lista sin gradiente no
  está priorizada.

**Contraste cruzado — conformidad unánime.** Si los tres agentes devuelven `Funciona` sin una sola
reserva y alguna tensión queda sin decidir, el hallazgo encabeza la lista de correcciones y D4 no supera
1,0. Tres personas conformes a la vez es el resultado esperado de un backlog que decidió bien, y también
el resultado esperado de un backlog que evitó decidir; la tensión sin decidir es lo que distingue un
caso del otro.

## Reglas de redacción que el agregador exige al backlog

Son las que D3 y D4 comprueban. Deliberadamente pocas.

- **Verificable.** «Rápido», «seguro» y «confiable» se reemplazan por su medida o su invariante. Un
  enunciado que nadie puede declarar cumplido o incumplido no es un requerimiento.
- **Atómico.** Una cosa verdadera o falsa, modificable por separado.
- **Sin mecanismo.** El backlog enuncia la garantía, no la tecnología que la cumple. Una cola, un
  producto de nube o una topología dentro de un título son una decisión de arquitectura disfrazada, y
  su lugar es [`D`](../redale/D-disenar-servicio/).
- **Un título dice el comportamiento, no la tecnología.** *(Nueva en este caso.)* «Cifrado AES-256 en
  reposo» no es un requerimiento: es la respuesta a uno que nadie escribió. La garantía es otra cosa
  y se reconoce porque nombra a alguien y una circunstancia —*quién no puede leer los datos de
  identidad de Elena aunque tenga la base de datos delante*—. Si al quitarle el nombre del algoritmo
  el título deja de decir algo, no decía nada más que el algoritmo.
- **La ambigüedad se marca, nunca se rellena en silencio.** El enunciado deja el dominio abierto. Lo
  indefinido lleva uno de dos marcadores:
  - `[CLARIFY: pregunta concreta]` cuando la respuesta determina el contenido.
  - `[ASSUMPTION: enunciado]` cuando se avanza bajo una hipótesis declarada.
- **Sin referencias portantes.** Un puntero al final es admisible. Una frase que no se entiende sin ir
  a buscar lo que referencia, no — y en un backlog sin descripción, menos todavía.
- **Nada se nombra por su texto visible.** La etiqueta de un botón o el asunto de un mensaje cambian
  sin que cambie ningún requerimiento. Se nombra la intención.

## Propagación

La lección más cara del caso anterior no fue de sustancia. Fue esta: **el modo de falla dominante es la
propagación.** Nueve rondas, y la mayoría de los hallazgos de coherencia eran un requerimiento
corregido mientras el enunciado que lo gobernaba seguía afirmando lo viejo — incluido, dos veces, el
propio defecto de la ronda anterior sobreviviendo una altitud más abajo.

En R.E.D.A.L.E. pega más fuerte, porque los pasos están explícitamente encadenados y el método lo dice:
*cada paso consume la salida del anterior*. **Tocar `R` obliga a rebarrer `E`, `D`, `A` y `L`.** Un
título corregido deja una estimación calculada sobre el volumen viejo, un endpoint que responde lo que
ya no se promete y una tabla con un campo que ya nadie llena.

El agregador busca **por nombre** las cuatro variantes que el caso anterior encontró:

| Variante | Qué es | Cómo se ve en SendIt |
|---|---|---|
| **Cifra sin productor** | Un valor del que todo depende y que ningún ítem produce | El backlog promete el monto en soles fijado al pagar, y ningún título dice quién fija la tasa ni en qué instante queda fija |
| **Acto sin consumidor** | Algo que se puede hacer, registrar y recuperar, y que no llega a nadie ni puede ser respondido | El sistema retiene un envío y ningún ítem lo paga, lo devuelve ni lo libera |
| **Reparación en la altitud equivocada** | El arreglo se aplica donde se vio el síntoma, no en el enunciado que lo gobierna | Se corrige un `RF` y el usuario modelo, las preguntas de encuadre o `D` siguen afirmando lo anterior |
| **Estado sin terminador** | Un estado que se abre y que nada cierra | Una retención cuyo plazo vence y no produce consecuencia; un envío «en proceso» que no llega a ningún estado final; un cobro de Elena que no cierra el envío |

Cada rebarrido se registra en la corrida **aunque no encuentre nada**. Un rebarrido vacío es un
resultado; un rebarrido que nadie corrió no lo es, y son indistinguibles si no se anota.

## La rúbrica congelada

La rúbrica no cambia entre rondas, porque si cambiara las filas anteriores de
[`HISTORY.md`](HISTORY.md) dejarían de ser comparables. Eso estaba escrito y **nada lo comprobaba** —
y el caso anterior enmendó su propio aparato en plena iteración 01, con las ocho filas siguientes
midiéndose contra una vara que ya no era la de la primera. Nadie mintió: nadie tenía cómo notarlo.

Ahora se comprueba. La rúbrica tiene una forma compilada, [`rubric.json`](rubric.json) —cuánto vale
cada dimensión, en qué orden se aplican las reglas, dónde están los techos—, y un script que resume
las dos mitades en un identificador corto:

```
$ ./evals/rubric-lock.sh
sendit-eval v1.0.0 · lock ‹12 hex›
```

**Cada corrida anota su lock y cada fila del historial lo lleva.** Dos filas con el mismo lock se
midieron contra la misma vara. Dos filas con lock distinto no son comparables, y quien las compare
tiene que decir por qué puede.

El lock cubre los **dos** archivos: `rubric.json`, que dice cuánto vale cada cosa, y este README, que
dice qué mide. Cubrir solo el primero sería dejar abierto el agujero por donde la prosa deriva sin que
el número se entere — que es la versión de la propagación aplicada a la propia vara.

La consecuencia incómoda se acepta a propósito: **corregir una tilde también mueve el lock.** Nada
distingue mecánicamente una tilde de un cambio de vara, y la salida barata —un lock que solo cubra la
aritmética— es exactamente el agujero que se quería tapar. Cuando el cambio fue cosmético se declara
así en la fila de `HISTORY.md`: *lock movido, sin cambio de vara*. La comparabilidad pasa a descansar
en una afirmación firmada y auditable, en lugar de descansar en el silencio.

## El piso de ruido

Un delta entre dos rondas no se puede leer sin saber cuánto se mueve el aparato **cuando el backlog no
se movió**. El protocolo, y el número cuando exista, están en [`RUIDO.md`](RUIDO.md).

La regla que habilita es una sola: **un cambio menor que la resolución del instrumento no se reporta
como mejora ni como regresión, sino como *sin señal*.** El caso anterior leyó `8,25 → 7,75` como una
regresión y `8,0 · 8,0 · 8,0` como estabilidad sin haber corrido nunca dos veces el mismo SHA; si el
aparato tiembla medio punto por su cuenta, esas dos lecturas son la misma y ninguna es un hallazgo.

Se mide **una vez por lock**, no una vez por ronda: el ruido es una propiedad de la vara, no del
backlog. Cuando el lock se mueve, la medición caduca con él.

## Cómo se corre una iteración

1. **Congela el estado.** Anota el SHA corto del commit que se evalúa y el **lock** que devuelve
   `./evals/rubric-lock.sh`. El puntaje pertenece a ese par: sin el SHA no se sabe qué se midió, y sin
   el lock no se sabe con qué vara.
2. **Corre los tres agentes de persona**, por separado y aislados entre sí, cada uno contra su archivo
   y el backlog. La coincidencia entre tres lecturas solo es evidencia si son independientes.
3. **Corre el agregador**, a ciegas del historial: D2 con su censo, D3, D4 con sus techos, y los cuatro
   rebarridos de propagación por nombre.
4. **Computa** `D1 = 3 − Σ(deducciones)` y el total sobre 10. Verifica la precondición de los tres
   veredictos antes de emitir cualquier total.
5. **Comprueba el lock al terminar** con `./evals/rubric-lock.sh --verify ‹lock›`. Si se movió a mitad
   de la corrida, la corrida se descarta: se puntuó contra dos varas y no se sabe cuál dio cuál punto.
6. **Escribe** `evals/iterations/AAAA-MM-DD-NN.md` siguiendo [la plantilla](iterations/_TEMPLATE.md).
7. **Agrega la fila** a [`HISTORY.md`](HISTORY.md) con su lock, y la iteración a
   [`redale/ITERACIONES.md`](../redale/ITERACIONES.md) si cambió alguna decisión de diseño.
8. **Si el total es menor que 8: corrige el backlog y vuelve al paso 1.** El backlog cambia; la rúbrica
   no.

**Medir y corregir no ocurren a la vez.** Las correcciones se aplican **después** de puntuar y quedan
sin puntaje hasta la ronda siguiente, que las mide en un SHA nuevo. Corregir durante la medición
destruye la medición: quien corrige conoce la vara, y el segundo número diría tanto sobre el backlog
corregido como sobre la corrección ajustada al número.

**Ni la rúbrica ni las personas se editan para elevar el puntaje.** Son la vara. Si una regla de esta
rúbrica resulta equivocada se cambia por escrito, en su propia ronda, y las corridas anteriores dejan de
ser comparables — que es exactamente lo que hay que declarar cuando eso pasa.
