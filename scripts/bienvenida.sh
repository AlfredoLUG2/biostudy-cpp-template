#!/usr/bin/env bash
set -euo pipefail

# Works even when invoked from a different folder. No downloads or package installs.
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.."

if [[ "${1:-}" != "--mostrar" ]]; then
    mkdir -p build
    g++ -std=c++17 -Wall -Wextra -Wpedantic -g main.cpp -o build/programa
fi

if [[ -x build/programa ]]; then
    ./build/programa
else
    printf '\nCompila tu programa con Ctrl+Shift+B o bash scripts/bienvenida.sh.\n'
fi

printf '\nPara ejecutar de nuevo: Ctrl+Shift+B o bash scripts/bienvenida.sh\n'
printf 'Guarda tus cambios en un repositorio antes de eliminar el codespace.\n'
