#!/usr/bin/env bash
#
# Lock de la rúbrica.
#
# La rúbrica declara que no cambia entre rondas, porque si cambiara las filas anteriores de
# HISTORY.md dejarían de ser comparables. Eso era una promesa: nada la comprobaba. Este script la
# vuelve comprobable — imprime un identificador corto de la vara vigente, que cada corrida anota y
# cada fila del historial lleva. Dos filas con el mismo lock se compararon contra la misma vara;
# dos filas con lock distinto, no, y el que las compare tiene que decir por qué puede.
#
# El lock cubre los dos archivos: rubric.json, que dice cuánto vale cada cosa, y README.md, que dice
# qué mide. Cubrir solo el primero sería el agujero por donde la prosa deriva sin que el número se
# entere.
#
# Uso:
#   ./evals/rubric-lock.sh              imprime la versión y el lock vigentes
#   ./evals/rubric-lock.sh --verify XX  sale 1 si el lock vigente no es XX

set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JSON="$DIR/rubric.json"
PROSA="$DIR/README.md"

for f in "$JSON" "$PROSA"; do
  [ -f "$f" ] || { echo "falta $f" >&2; exit 2; }
done

if command -v shasum >/dev/null 2>&1; then
  sha() { shasum -a 256 | cut -d' ' -f1; }
elif command -v sha256sum >/dev/null 2>&1; then
  sha() { sha256sum | cut -d' ' -f1; }
else
  echo "no hay shasum ni sha256sum" >&2; exit 2
fi

VERSION="$(sed -n 's/.*"version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' "$JSON" | head -1)"
LOCK="$(cat "$JSON" "$PROSA" | sha | cut -c1-12)"

if [ "${1:-}" = "--verify" ]; then
  ESPERADO="${2:-}"
  [ -n "$ESPERADO" ] || { echo "uso: $0 --verify <lock>" >&2; exit 2; }
  if [ "$ESPERADO" = "$LOCK" ]; then
    echo "lock intacto · v$VERSION · $LOCK"
  else
    echo "LOCK MOVIDO · esperado $ESPERADO · vigente $LOCK" >&2
    echo "La vara cambió desde esa corrida. O se declara el cambio en HISTORY.md y se abre bloque" >&2
    echo "de comparabilidad nuevo, o se revierte la edición de la rúbrica." >&2
    exit 1
  fi
else
  echo "sendit-eval v$VERSION · lock $LOCK"
fi
