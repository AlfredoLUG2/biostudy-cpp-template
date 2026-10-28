# Bienvenido a BioStudy Lab

Tu espacio de práctica de **C y C++**, listo en GitHub Codespaces con GCC, G++, GDB y la extensión C/C++ de VS Code. El programa de bienvenida está en `main.cpp`: cámbialo y empieza a experimentar.

## Primer programa

Al crear el codespace se compila y ejecuta la bienvenida. Al conectar el editor se abre `main.cpp` y una terminal muestra el programa preparado. No necesitas instalar un compilador en tu equipo.

1. Cambia el mensaje de `main.cpp` por tu nombre.
2. Guarda con **Ctrl+S**.
3. Pulsa **Ctrl+Shift+B** para compilar y ejecutar `main.cpp`. También puedes usar **Terminal → Ejecutar tarea de compilación** o escribir en la terminal:

```bash
bash scripts/bienvenida.sh
```

El ejecutable se genera en `build/programa`; los errores de compilación aparecen en la terminal y en Problemas. Para volver a ejecutar la última compilación:

```bash
./build/programa
```

## Tus propios archivos

Abre **Terminal → Nueva terminal**. Para compilar otro archivo C++ guardado en la carpeta del proyecto:

```bash
mkdir -p build
g++ -std=c++17 -Wall -Wextra -Wpedantic ejercicio.cpp -o build/ejercicio
./build/ejercicio
```

Para practicar C, crea `main.c`:

```c
#include <stdio.h>

int main(void) {
    printf("Hola desde BioStudy Lab en C!\n");
    return 0;
}
```

Compílalo y ejecútalo así:

```bash
mkdir -p build
gcc -std=c17 -Wall -Wextra -Wpedantic main.c -o build/programa-c
./build/programa-c
```

**Ctrl+Shift+B** está asignado al programa de bienvenida `main.cpp`. Usa los comandos anteriores para otros archivos.

## Guarda tu proyecto en tu cuenta

Si creaste primero un repositorio con **Use this template → Create a new repository**, el codespace ya está conectado a esa copia. Abre **Control de código fuente**, agrega los cambios con `+`, escribe un mensaje, pulsa **Commit** y después **Sync Changes / Push**.

Si abriste directamente un codespace desde la plantilla, todavía no tienes un repositorio remoto personal. Guarda con **Commit → Publish Branch**, elige un nombre y selecciona **Publish to GitHub private repository** o **public repository**. El repositorio nuevo pertenecerá a la cuenta con la que creaste el entorno. No publiques contraseñas, tokens ni datos personales.

Puedes retomar tus entornos en [Mis Codespaces](https://github.com/codespaces). Revisa en GitHub que tus archivos y commits estén publicados antes de eliminar un entorno.

## Cuenta, cuota y compatibilidad

- Entra o regístrate directamente en GitHub. La página de BioStudy Lab no necesita tu contraseña ni tus tokens.
- GitHub puede pedir confirmar **Create repository** o **Create codespace**. Iniciar sesión por sí solo no crea automáticamente tu repositorio.
- Revisa tu [consumo y facturación](https://github.com/settings/billing/summary) antes de crear el entorno. La cuota incluida es limitada y depende de tu cuenta y configuración.
- Detén el codespace al terminar para dejar de consumir cómputo. El almacenamiento sigue contando mientras exista; elimina los entornos que ya no uses después de publicar y comprobar tus cambios.
- Este entorno usa **Linux**. Ejemplos que requieren `conio.h`, `Windows.h`, `getch()` o `system("pause")` necesitan adaptaciones. C/C++ estándar funciona en la terminal; los sketches de Arduino requieren sus herramientas y bibliotecas y no controlan una placa virtual de BioStudy Lab.

## Configuración de la plantilla

La imagen oficial está fijada a `mcr.microsoft.com/devcontainers/cpp:3.0.7-bookworm`. `.devcontainer/devcontainer.json` prepara el programa sin descargas adicionales de paquetes. La primera apertura descarga la imagen y la extensión de C/C++ como parte de la preparación del entorno.

Referencias: [Codespaces desde una plantilla](https://docs.github.com/en/codespaces/developing-in-a-codespace/creating-a-codespace-from-a-template), [abrir archivos automáticamente](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/configuring-dev-containers/automatically-opening-files-in-the-codespaces-for-a-repository) e [imagen oficial C/C++](https://github.com/devcontainers/images/tree/main/src/cpp).
