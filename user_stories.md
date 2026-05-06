# 📋 Documentación de Historias de Usuario - Proyecto Mielecita (Semanas 7-11)

Como **Scrum Master**, he integrado los requerimientos visuales de Figma con la lógica técnica de Base de Datos (Supabase/Lovable) para garantizar un producto final robusto.

---

### 📑 Backlog de Historias de Usuario (Funcionalidades del Sistema)

| ID | Historia de Usuario | Criterios de Aceptación (Definition of Done) | Rol Técnico | Semana |
|:---|:---|:---|:---|:---|
| **US01** | **Acceso Principal:** Como visitante, quiero ver la portada de "Mielecita" para identificar la marca. | - [x] Interfaz con branding corregido en Lovable.<br>- [x] Botón "ENTRAR" funcional con redirección. | Scrum Master | 7 |
| **US02** | **Autenticación:** Como usuario registrado, quiero un login para acceder a mi cuenta de forma segura. | - [x] Validación de credenciales contra tabla `users`.<br>- [x] Manejo de errores para datos incorrectos. | SQL Developer | 7 |
| **US03** | **Panel de Cliente:** Al ingresar, quiero ver un mensaje de bienvenida para confirmar mi acceso. | - [x] Redirección exitosa tras validación SQL.<br>- [x] Visualización del componente "Bienvenido" dinámico. | Analyst | 8 |
| **US04** | **Navegación Lateral:** Como cliente, quiero un menú para filtrar productos por categoría rápidamente. | - [x] Menú lateral (25% ancho) con las 5 categorías oficiales.<br>- [x] Botones operativos vinculados a `category_id`. | Analyst | 9 |
| **#US05** | **Catálogo Masivo:** Como cliente, quiero que el catálogo cargue los productos dinámicamente. | - [x] Carga de 100 registros mediante `02_seed.sql`.<br>- [x] Consultas reactivas que no recargan la página. | Query Master | 10 |
| **US06** | **Gestión de Compra:** Como cliente, quiero seleccionar un producto y que el sistema valide si hay stock. | - [x] Interacción con botón "Comprar".<br>- [x] Validación de integridad mediante **Trigger** de stock. | SQL Tester / DBA | 11 |

---

### 🔧 Historias Técnicas y Control de Calidad (Bug Fixes)

Estas historias fueron creadas por el Scrum Master para resolver los fallos detectados durante las pruebas de estrés.

| ID | Tarea Técnica | Criterio de Aceptación | Resultado del Sprint |
|:---|:---|:---|:---|
| **TS01** | **Protección de Inventario** | Implementar lógica de servidor que bloquee ventas con stock 0. | **Solucionado (BUG-01)** |
| **TS02** | **Validación de Datos (Regex)** | El campo `phone` debe ser estrictamente numérico (10 dígitos). | **Solucionado (BUG-02)** |
| **TS03** | **Integridad Referencial** | Impedir el borrado de categorías que tengan productos asociados. | **Solucionado (TS-03)** |
| **TS04** | **Cálculo Financiero** | Crear una **VISTA** para que el total de venta sea exacto y automático. | **Solucionado (BUG-03)** |

---

### 📊 Resumen de Esfuerzo por Rol

- **Analyst & Designer:** Tradujo las necesidades del cliente a filtros y vistas visuales.
- **SQL Developer:** Construyó la estructura que permite que las historias se vuelvan realidad.
- **DBA & Tester:** Aseguró que los criterios de aceptación de seguridad se cumplieran rigurosamente.
- **Query Master:** Dio vida a las historias poblando el sistema con datos reales y útiles.
- **Scrum Master:** Coordinó que cada historia de usuario tuviera su respaldo técnico en SQL.
## 🛠️ Notas Técnicas para el Desarrollo

> [!TIP]
> **Arquitectura de Base de Datos**
> - **Tabla `products`:** Debe contener una columna `category` para filtrar por (Pasteles, Bebidas, Snacks).
> - **Tabla `users`:** Se recomienda que el campo `password` esté debidamente encriptado.

> [!IMPORTANT]
> **Diseño de Interfaz (UI)**
> El layout debe respetar la proporción **1/4 (Menú)** y **3/4 (Contenido)** para mantener la consistencia visual en todas las pantallas de compra.

---
*Documento actualizado al: 2026*
