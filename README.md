# Proyecto: Prueba E2E – Flujo de Compra en DemoBlaze

## Automatización funcional E2E usando Serenity BDD y Screenplay Pattern

### Descripción general

Este repositorio contiene la solución al Ejercicio 1 de la prueba técnica, cuyo objetivo es implementar una prueba automatizada End-to-End (E2E) que valide el flujo completo de compra en el sitio web:

**URL:** https://www.demoblaze.com/

La automatización cubre el comportamiento real de un usuario desde el acceso al sitio hasta la confirmación final de la compra, validando los pasos críticos del proceso.

---

## Alcance de la automatización

El flujo automatizado contempla las siguientes acciones:

1. Acceder al sitio DemoBlaze
2. Seleccionar dos productos de diferentes categorías
3. Agregar los productos al carrito de compras
4. Visualizar el contenido del carrito
5. Completar el formulario de compra
6. Finalizar la compra
7. Validar el mensaje de confirmación de la transacción

---

## Tecnologías utilizadas

| Tecnología | Versión | Descripción |
|------------|---------|-------------|
| Java | 17 | Lenguaje base del proyecto |
| Gradle | 8.x | Herramienta de construcción |
| Serenity BDD | 4.2.0 | Framework de automatización y reportería |
| Serenity Screenplay | 4.2.0 | Implementación del patrón Screenplay |
| Cucumber | 7.18.0 | Definición de escenarios BDD |
| JUnit 5 | 5.10.0 | Ejecutor de pruebas (JUnit Platform + Vintage Engine) |
| Selenium WebDriver | 4.27.0 | Automatización del navegador |
| ChromeDriver | Automático | Gestionado por Serenity |
| Logback | 1.5.8 | Gestión de logs |
| Apache POI | 5.3.0 | Manejo de archivos Excel (soporte futuro) |

---

## Estructura del proyecto

```
PRUEBA_TECNICA_E2E_DEMOBLAZE
├── .gradle
├── build
├── gradle
├── history
├── Pruebas de ejecucion
│   └── (Capturas manuales para documentación)
├── src
│   ├── main
│   │   └── java
│   │       └── org
│   │           └── sofka
│   │               ├── page
│   │               ├── question
│   │               ├── task
│   │               └── Main.java
│   └── test
│       ├── java
│       │   ├── glue
│       │   ├── runner
│       │   ├── tasks
│       │   ├── interactions
│       │   ├── questions
│       │   └── userinterface
│       └── resources
│           ├── serenity.conf
│           └── features
│               └── purchase-process.feature
├── target
│   └── site
│       └── serenity
│           └── (Evidencias automáticas generadas por Serenity Screenshots y htmls)
├── .gitignore
├── build.gradle
├── gradlew
├── gradlew.bat
├── README.md
├── serenity.properties
└── settings.gradle

```

---

## Requisitos previos

Antes de ejecutar el proyecto, asegúrate de contar con lo siguiente:

### Java 17

Esta versión es la recomendada. Verificar instalación:

```bash
java -version
```

### Google Chrome

Debe estar instalado y actualizado en el sistema.

### Sistema operativo

- Windows 10 / 11
- Terminal: PowerShell o terminal integrada de VS Code

---

## Ejecución del proyecto

### Paso 1: Descargar el proyecto

**Opción 1:** Descarga manual
- Hacer clic en `<> Code` → Pestaña `Local` → `Download ZIP`

**Opción 2:** Clonar el proyecto 
```bash
git clone https://github.com/Carlos-Meneses1/PRUEBA_TECNICA_E2E_DEMOBLAZE.git
cd PRUEBA_TECNICA_E2E_DEMOBLAZE
```

### Paso 2: Ejecutar las pruebas (modo visible)

En Windows (PowerShell o Terminal de VS Code), navegar a la ruta de la carpeta donde está el proyecto y ejecutar el siguiente comando:

```powershell
.\gradlew --% -Dserenity.headless.mode=false clean test
```

Este comando realiza las siguientes acciones:

- Compila el proyecto
- Ejecuta el escenario definido en Cucumber
- Abre el navegador Chrome en modo visible

### Paso 3: Generación de reportes

Al finalizar la ejecución, Serenity genera automáticamente los reportes. Para visualizarlos, ejecutar el siguiente comando en la consola:

```powershell
.\gradlew aggregate
```

Los reportes se encuentran ejecutando:

```
target/site/serenity/index.html
```

Abrir el archivo en un navegador para visualizar:

- Escenarios ejecutados
- Evidencias visuales (screenshots)
- Estado de cada paso
- Tiempos de ejecución

---

## Escenario automatizado (BDD)

El escenario principal está definido en:

```
src/test/resources/features/purchase-process.feature
```

Incluye:

- Uso de Scenario Outline
- Parametrización de datos
- Validación del mensaje de confirmación de compra

---

## Ejercicio solicitado

- Agregar dos productos al carrito
- Visualizar el carrito de compras
- Completar el formulario de compra
- Finalizar la compra y validar confirmación

Todos los puntos solicitados fueron implementados y validados correctamente.

---

## Resultados y conclusiones

- El flujo de compra de DemoBlaze es completamente automatizable mediante pruebas E2E.
- El patrón Screenplay mejora la legibilidad, reutilización y mantenimiento del código.
- Serenity BDD proporciona reportes claros, detallados y orientados al negocio.
- La solución es escalable para incorporar más escenarios y validaciones.

---

## Autor
Carlos Meneses
Prueba técnica – Automatización E2E con Serenity BDD
