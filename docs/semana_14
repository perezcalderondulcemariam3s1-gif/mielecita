# 🗓️ Registro de Desarrollo Expandido, Bitácora de Aprendizaje y README de Construcción - Semana 14

**Proyecto:** Sistema de Comercio Electrónico Mielecita Bakery  
**Fase del Proyecto:** Cierre del Tercer Parcial (Integración con Base de Datos en la Nube)  
**Objetivo Escolar:** Evidenciar el proceso de migración de datos estáticos locales hacia un entorno en la nube con Supabase, integrando las historias de usuario y el Product Backlog técnico definitivo.

---

## 💬 Transcripción de la Plática y Proceso de Construcción de la Semana 14

### Paso 1: El Planteamiento de Mejoras (Lo que te pedí)
Tras los errores descubiertos en la Semana 13 (donde el carrito se borraba al presionar F5 y ocurrían sobreventas por clics rápidos), nos comunicamos contigo para escalar la aplicación. Te solicitamos sustituir el arreglo JSON local por una infraestructura en la nube usando **Supabase**, añadir validaciones estrictas de seguridad de 12 caracteres en la contraseña, restringir el dominio a exclusivamente correos `@gmail.com`, e implementar sincronización en tiempo real vía WebSockets para congelar el botón de compra a los clientes en menos de 2 segundos si el stock en la base de datos llega a 0.

---

### Paso 2: Escenario de Integración en la Nube (Formato Gherkin)
Modelamos el comportamiento esperado del puente entre la interfaz de Lovable y la base de datos PostgreSQL:

Feature: Validación de Acceso y Sincronización en la Nube
  Scenario: Un usuario intenta registrarse con credenciales débiles o dominios corporativos ajenos
    Given que el cliente está en la pantalla de autenticación
    When ingresa un correo con dominio @outlook.com o una contraseña de 8 caracteres
    Then el middleware de Supabase debe denegar el registro de forma inmediata
    And la interfaz de Lovable debe notificar el error "La contraseña debe tener 12 caracteres y el correo debe ser @gmail.com"

---

### Paso 3: Código de Inicialización del Cliente Supabase
Tú procesaste nuestra petición y nos diste las líneas de código clave para inicializar el cliente de la base de datos y escuchar los cambios de inventario en vivo desde el navegador:

import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://mielecita-bakery.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...';
export const supabase = createClient(supabaseUrl, supabaseKey);

// Escucha en tiempo real de cambios en la tabla de inventario
export const suscribirInventario = (onInsertOrUpdate) => {
  return supabase
    .channel('cambios-inventario')
    .on('postgres_changes', { event: '*', schema: 'public', table: 'INVENTORY' }, payload => {
      onInsertOrUpdate(payload);
    })
    .subscribe();
};

---

### Paso 4: Explicación de cómo lo construimos paso a paso
Para asimilar el avance de esta semana, estructuramos la lógica en 5 fases de ingeniería:
1. **Conexión de Middleware:** Reemplazamos las variables locales por la inicialización de `createClient`, permitiendo que Lovable envíe consultas directas a PostgreSQL.
2. **Filtro de Dominio por Regex:** Implementamos restricciones a nivel servidor para rechazar cualquier registro que no termine en `@gmail.com`.
3. **Escucha WebSocket Activa:** Configuramos un canal en tiempo real que oye la tabla `INVENTORY` para alertar inmediatamente al cliente si Dulce o Wendy alteran un precio o stock.
4. **Protección de Transacciones:** Mudamos la lógica de descuento de inventario a funciones almacenadas (`PL/pgSQL`) para evitar alteraciones de datos desde la consola del navegador.
5. **Configuración de RLS (Row Level Security):** Activamos políticas de aislamiento para que los clientes solo lean productos pero no puedan editar las tablas de configuraciones administrativas.

---

## 📈 Reporte de Evaluación: ¿Funcionó o No funcionó?

### 🟢 Lo que SÍ funcionó con éxito:
Al probar la integración, la persistencia funcionó perfectamente: ahora el carrito y el menú se mantienen intactos aunque el usuario presione F5 o recargue la pestaña. La restricción de seguridad bloquea de inmediato los correos no autorizados y las contraseñas cortas. Cuando disminuimos el stock a 0 de forma manual en la consola de Supabase, la tarjeta de la aplicación web en Lovable cambió a escala de grises y desactivó el botón de compra en 1.2 segundos sin recargar el navegador.

### 🔴 Lo que NO funcionó (Bugs remanentes detectados):
* **Falta de caché sin conexión:** Si el cliente pierde la conexión de datos móviles por un segundo en la tienda física, la aplicación se congela al no contar con un Service Worker que retenga el último estado del catálogo JSON en memoria caché local.
* **Latencia en picos de tráfico:** Durante simulaciones de alta demanda concurrente en el editor SQL, las peticiones tardaron hasta 3.5 segundos en actualizarse debido a la falta de índices compuestos en la tabla de `SALES_DETAILS`.

---

## 🔍 Preguntas de Escalabilidad planteadas para el Siguiente Ciclo
1. ¿Cómo programar un Service Worker en Vite para que el catálogo cargue de forma instantánea mediante caché offline cuando fallen los datos móviles?
2. ¿Qué comandos de optimización (`INDEX`) debemos aplicar en PostgreSQL para reducir la latencia de respuesta en la tabla de transacciones de ventas?

---

# 🍰 Mielecita - Pastry Management System

<p align="center">
  <img src="https://img.shields.io/badge/Status-Finalized-green?style=for-the-badge" alt="Status">
  <img src="https://img.shields.io/badge/Semester-Project-blue?style=for-the-badge" alt="Semester">
  <img src="https://img.shields.io/badge/Tech-PostgreSQL%20|%20Lovable-orange?style=for-the-badge" alt="Tech">
</p>

## 📖 About the Project
**Mielecita** is a comprehensive technology solution designed to digitize and optimize the operations of an artisanal pastry shop. The system transforms manual logs into an automated data management environment, allowing precise control over inventory, sales, and information security.

With a real-world catalog of **100 products**, the project integrates a robust cloud database with an intelligent interface, ensuring that every cake, drink, or snack is always accounted for.

---

## 🎯 Business Vision & Goal
"Our goal is to consolidate Mielecita as the leading local pastry shop through a premium digital platform. We will offer a curated catalog of **50 gourmet products** (10 per category: Drinks, Desserts, Ice Cream, Jellies, and Snacks). This system is designed to provide our customers with a fast, safe, and transparent shopping experience, while ensuring the business has absolute control over inventory, sales, and data protection."

---
Application link  
https://mielecita-sweet-cart.lovable.app/

## 👥 Scrum Team Members
* **Scrum Master:** Perez Calderon Dulce Maria
* **Analyst & Designer:** Hernandez Nextle Wendy Stefany
* **SQL Developer:** Rosales Cortes Joel Raymundo
* **Database Administrator:** Bañuelos Sandoval Aleri
* **The Query Master:** Amayo Torres Juan Antonio
* **SQL Tester:** Pozos Urbina Jesus Leonardo

---

## 📖 Table of Contents
* [Getting Started](#-getting-started)
* [Usage Examples](#-usage-examples)
* [Architecture & Tech Stack](#-architecture--tech-stack)
* [Product Backlog Evolution](#-product-backlog-evolution)
* [Running Tests](#-running-tests)
* [License](#-license)
* [User stories & aception criterio](#-User-Stories-&-Acceptance-Criteria-(Gherkin))

---

## ⚡ Getting Started

### Prerequisites
* Git
* Supabase Account
* Modern Web Browser

### Installation
1. Clone the repository:
```bash
git clone [https://github.com/PerezDulce/mielecita-pastry-system.git](https://github.com/PerezDulce/mielecita-pastry-system.git)
