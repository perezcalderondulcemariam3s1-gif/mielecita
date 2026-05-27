# Mielecita Pastry Shop: Professional Product Backlog

## Product Goal
> "Construir una plataforma de ventas profesional, segura y sincronizada que posicione a la Repostería Mielecita como líder tecnológico local. El ecosistema gestionará un catálogo de 50 productos gourmet distribuidos en 5 categorías estratégicas, garantizando una experiencia de usuario fluida, integridad de datos financieros mediante cálculos automatizados y un blindaje de seguridad industrial que proteja la propiedad intelectual y los datos del cliente."

---

## Epics & User Stories

### Epic 1: Identity, Security & Cloud Infrastructure
> *Se enfoca en asegurar el acceso de los usuarios, mantener la integridad de las sesiones y establecer la conexión robusta con la base de datos necesaria para la protección de la inteligencia del negocio.*

#### User Story #1: Autenticación de Élite y Validación de Dominios
**Description:**
*As a* administrador y cliente,
*I want to* registrarme e iniciar sesión exclusivamente con correos @gmail.com y contraseñas de 12 caracteres,
*So that* mi cuenta esté protegida bajo estándares profesionales y la base de datos de clientes sea legítima y segura.

**Acceptance Criteria:**
* **Scenario 1: Validación de dominio corporativo**
  * **Given** el usuario se encuentra en la pantalla de registro,
  * **When** intenta ingresar un correo que no pertenece al dominio @gmail.com,
  * **Then** el sistema debe bloquear el registro y mostrar un mensaje de advertencia indicando la restricción de dominio.
* **Scenario 2: Cumplimiento de complejidad de contraseña**
  * **Given** el usuario está creando su credencial de acceso,
  * **When** ingresa una contraseña de menos de 12 caracteres,
  * **Then** el sistema debe impedir la creación de la cuenta y mostrar un error de estándar de seguridad mínimo.
* **Scenario 3: Prevención de intrusiones externas (DBA Shield)**
  * **Given** un intento de conexión no autorizado desde herramientas externas (ej. DataGrip),
  * **When** el firewall de la base de datos detecta la petición,
  * **Then** debe disparar un bloqueo automático para mantener la privacidad de los precios y recetas.

#### User Story #2: Sincronización de Inventario en Tiempo Real
**Description:**
*As a* staff de la repostería,
*I want* que cualquier cambio en los productos (precios o stock) se guarde en la base de datos en la nube y se refleje al instante,
*So that* los clientes siempre vean información real al escanear el código QR en la tienda.

**Acceptance Criteria:**
* **Scenario 1: Actualización reactiva del menú**
  * **Given** un cliente está visualizando el menú digital,
  * **When** el administrador cambia el precio de un producto en la base de datos,
  * **Then** la interfaz del cliente debe actualizarse en menos de 2 segundos sin necesidad de recargar la página.
* **Scenario 2: Protección de datos por ID de categoría**
  * **Given** el sistema registra una venta,
  * **When** se guarda en la tabla de transacciones,
  * **Then** cada registro debe estar vinculado correctamente a su categoría (Bebidas, Postres, Helados, Gelatinas, Snacks) para mantener la integridad relacional.

---

### Epic 2: Business Intelligence & Sales Management
> *Se enfoca en las funcionalidades principales que permiten al dueño interactuar con los datos de ventas y stock, proporcionando reportes analíticos y control de inventario automatizado.*

#### User Story #3: Gestión Automatizada de Stock (Zero-Waste Guard)
**Description:**
*As a* dueño de negocio,
*I want to* que el sistema bloquee ventas automáticamente cuando el inventario llegue a cero,
*So that* no se realicen promesas de venta que no podamos cumplir en la cocina física.

**Acceptance Criteria:**
* **Scenario 1: Bloqueo de venta por agotado (SQL Triggers)**
  * **Given** que un producto tiene 0 unidades en stock,
  * **When** un cliente intenta añadirlo al carrito o comprarlo,
  * **Then** el sistema debe mostrar un estado de "OUT OF STOCK" y deshabilitar el botón de compra.
* **Scenario 2: Verificación de inventario masivo**
  * **Given** el gerente consulta la tabla de inventario,
  * **When** revisa cualquier categoría,
  * **Then** el sistema debe confirmar que existen exactamente 10 artículos únicos con 10 unidades iniciales cada uno.

#### User Story #4: Reportes de Rentabilidad (Analítica DBA)
**Description:**
*As a* dueño de negocio,
*I want to* generar reportes financieros que sumen las ventas por categoría mediante Joins y funciones agregadas,
*So that* pueda identificar visualmente cuál de las 5 áreas de la repostería es la más rentable.

**Acceptance Criteria:**
* **Scenario 1: Cálculo de ingresos totales por categoría**
  * **Given** la base de datos con ventas registradas,
  * **When** el administrador solicita un reporte de "Postres",
  * **Then** el sistema debe ejecutar una consulta SQL SUM que devuelva el total exacto de ingresos de esa categoría específica.

---

## Future Backlog (Out of Current Scope)
> *Representa las futuras iteraciones y escalabilidad que se abordarán en próximos sprints.*

**Feature Enhancements:**
* **Módulo de Fidelización:** Implementar un sistema de puntos para clientes frecuentes de Mielecita.
* **Pasarela de Pagos Digital:** Integrar pagos con tarjeta de crédito/débito directamente en la plataforma.
* **Sistema de Notificaciones:** Alertar al staff cuando un producto de alta demanda baje de 3 unidades en stock.

**Technical Debt & Refactoring:**
* **Disaster Recovery Automation:** Automatizar respaldos semanales completos para asegurar la recuperación de los 50 productos en menos de 5 minutos ante fallos de servidor.
* **Optimización de UI:** Modularizar los componentes de la interfaz en Lovable para mejorar los tiempos de carga en dispositivos móviles antiguos.
