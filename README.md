# siries-c4-model

## Estructura del Proyecto

```
siries-c4-model/
├── README.md
├── src/
│   ├── code/
│   │   └── c4.puml
│   ├── component/
│   │   ├── c3-asincrono.puml
│   │   └── C3-sincrono.puml
│   ├── container/
│   │   ├── c2asincrono.puml
│   │   └── c2sincrono.puml
│   └── context/
│       └── c1.puml
```

## Descripción

Este proyecto contiene los diagramas C4 Model para el sistema SIRIES:

- **C1 (Context)**: Diagrama de contexto del sistema
- **C2 (Container)**: Diagramas de contenedores (síncrono y asíncrono)
- **C3 (Component)**: Diagramas de componentes (síncrono y asíncrono)
- **C4 (Code)**: Diagrama de código

## Requisitos

- IntelliJ IDEA (Community o Ultimate)
- Plugin PlantUML para IntelliJ IDEA
- Graphviz (para renderizar diagramas PlantUML)

## Configuración en IntelliJ IDEA

### 1. Instalar Plugin PlantUML
1. Abrir IntelliJ IDEA
2. Ir a `File` → `Settings` → `Plugins`
3. Buscar "PlantUML Integration"
4. Instalar y reiniciar IntelliJ

### 2. Instalar Graphviz
1. Descargar desde: https://graphviz.org/download/
2. Instalar en el sistema
3. Configurar la ruta en IntelliJ:
   - `File` → `Settings` → `Languages & Frameworks` → `PlantUML`
   - Especificar la ruta del ejecutable `dot.exe` de Graphviz

### 3. Abrir el Proyecto
1. Abrir IntelliJ IDEA
2. `File` → `Open`
3. Seleccionar la carpeta `siries-c4-model`
4. Esperar a que IntelliJ indexe el proyecto

### 4. Visualizar Diagramas
- Hacer clic derecho en cualquier archivo `.puml`
- Seleccionar `Diagrams` → `Show PlantUML Diagram`
- O presionar `Alt+D` (Windows/Linux) o `⌥D` (Mac)

## Uso

Los archivos `.puml` son diagramas PlantUML que pueden ser visualizados con:
- Plugin PlantUML para IntelliJ IDEA
- Extensión PlantUML para VS Code
- [PlantUML Online Server](http://www.plantuml.com/plantuml/uml/)

## Solución de Problemas

### No se muestra la estructura de carpetas en IntelliJ
1. Hacer clic en el botón de "Refrescar" en el panel Project
2. Verificar que los archivos `.idea/modules.xml` y `siries-c4-model.iml` existan
3. Ir a `File` → `Invalidate Caches / Restart` → `Invalidate and Restart`

### No se renderizan los diagramas
1. Verificar que Graphviz esté instalado
2. Configurar la ruta de Graphviz en Settings
3. Reiniciar IntelliJ IDEA

