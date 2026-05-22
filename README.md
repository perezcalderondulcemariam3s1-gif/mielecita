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

## 🎯 Product Goal
Transformar la gestión operativa de la pastelería **Mielecita** mediante un ecosistema digital integrado que garantice la seguridad de los datos, la sincronización en tiempo real entre el personal y los clientes, y una experiencia de compra sin fricciones a través de tecnología táctica y accesible.

---



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
## ⚡ Getting Started

### Prerequisites
* Git
* Supabase Account
* Modern Web Browser

### Installation
1. Clone the repository:
\`\`\`bash
git clone https://github.com/PerezDulce/mielecita-pastry-system.git
\`\`\`

2. Navigate to the project directory:
\`\`\`bash
cd mielecita-pastry-system
\`\`\`


## 📈 Product Backlog Evolution

As **Scrum Master**, I managed the progression of requirements across three key academic phases:



### 🎨 Phase 1: Design Pivot (The Figma Challenge)
*Focus: UI/UX Discovery and Platform Transition.*
* [x] **US-P1-01:** Definición de identidad visual y branding de "Mielecita".
* [x] **US-P1-02:** Diseño de prototipos de alta fidelidad en Figma.
* [x] **US-P1-03: Strategic Pivot:** Ante el costo imprevisto de $18 USD para finalizar la exportación en Figma, el equipo decidió migrar a una plataforma más eficiente para el desarrollo ágil, evitando gastos operativos innecesarios.

### 🔌 Phase 2: Secure Implementation (The Lovable-Supabase Migration)
*Focus: Backend Security and Infrastructure.*
* [x] **US-P2-01:** Migración del diseño visual a componentes vivos en **Lovable**.
* [x] **US-P2-02: Security Response:** Tras detectar una vulnerabilidad de seguridad (intento de robo de proyecto) al intentar conectar con Supabase externo y DataGrip, se tomó la decisión técnica de utilizar el **Supabase interno de Lovable**.
* [x] **US-P2-03: Database Architecture:** Implementación de la base de datos directamente en el ecosistema de Lovable, organizando la información en tablas relacionales seguras y optimizadas por IA.
* [x] **US-P2-04:** Carga masiva de **100 productos reales** para el catálogo.


### 🔐 Phase 3: Advanced Integration & Business Logic (Final Refinement)
*Focus: Full-stack synchronization, QR access protocols, and automated maintenance.*

* [x] **US-P3-01: Restricted Domain Access:** Enforced backend validation to allow only `@gmail.com` accounts, ensuring a standardized user base.
* [x] **US-P3-02: Advanced Password Security:** Implementation of a 12-character minimum constraint to prevent brute-force attacks.
* [x] **US-P3-03: Real-Time Sync (Staff vs. Client):** Engineered a synchronized database architecture where any modification made in the **Staff Portal** (price updates, descriptions, availability) reflects instantly on the **Client Interface** via Supabase Realtime.
* [x] **US-P3-04: Smart Link Personal Access:** Replaced traditional login flows for staff with **Direct Personal Access Links**, streamlining the administrative entry process.
* [x] **US-P3-05: QR Order Integration:** Generated dynamic **QR Codes** that embed direct links to the ordering system, reducing friction between the physical menu and the digital cart.
* [x] **US-P3-06: Inventory Guard (Triggers):** Deployment of PL/pgSQL triggers to automatically block sales and notify the staff when stock levels reach zero.

---
## 🏛️ Product Backlog & Epics

### **Fase 1: Prototipado y Diseño Visual (Figma)**
* **Épica:** E01 - Identidad Visual y Experiencia de Usuario.
* **Objetivo:** Establecer la base estética y el flujo de navegación antes de la implementación técnica para asegurar la aceptación del cliente.

### **Fase 2: Infraestructura y Conectividad (Lovable & Supabase)**
* **Épica:** E02 - Arquitectura de Datos y Catálogo Funcional.
* **Objetivo:** Migrar el diseño a una aplicación viva conectada a una base de datos segura, superando desafíos de infraestructura externa.

### **Fase 3: Seguridad y Automatización de Negocio (Final Refinement)**
* **Épica:** E03 - Blindaje de Datos y Sincronización Omnicanal.
* **Objetivo:** Implementar reglas de negocio avanzadas (validación de contraseñas, correos y stock) y optimizar el acceso del personal mediante links inteligentes y códigos QR.

---



## 📂 Repository Structure

* 📂 **`src/`**: Core DDL/DML scripts.

    * `01_schema.sql`: Table definitions and constraints.

    * `02_seed.sql`: 100 products bulk insert.

    * `05_bug_fixes.sql`: Security Triggers and Financial Views.

* 📂 **`queries/`**: Business Intelligence reports and advanced filters.

* 📂 **`tests/`**: Stress tests, security cases, and Bug Reports.



---



## 🛠️ Technology Stack

* **Design:** Figma (UI/UX Prototyping).

* **Database:** PostgreSQL via **Supabase Cloud**.

* **Frontend:** **Lovable.dev** (AI-driven SQL integration).

* **Methodology:** Agile / Scrum.



---



## 🚀 Technical Achievements

1. **Zero-Stock Prevention:** SQL Triggers developed to maintain inventory accuracy.

2. **Data Sanitization:** Regex-based constraints for phone and email validation.

3. **Financial Transparency:** Automated calculation of totals via SQL Views to avoid rounding errors.

4. **Scalability:** Optimized 3rd Normal Form (3NF) architecture.



---
## 💻 Usage Examples

The Mielecita system is designed for a seamless experience between the gourmet catalog and administrative control.

### 🛍️ Customer Experience
1. **Browse Catalog:** Users can explore over 100 products categorized by Pastries, Drinks, Snacks, Gelatins, and Ice Cream.
2. **Dynamic Filtering:** Use the sidebar to filter products in real-time.
3. **Secure Checkout:** To purchase, users must log in with a valid `@gmail.com` account and a password of at least 12 characters.

### ⚙️ Administrative Control
* **Inventory Management:** When a product's stock reaches **0**, the system automatically hides the "Buy" button and blocks the transaction via SQL Triggers.
* **Data Integrity:** All prices and totals are calculated server-side to ensure financial accuracy.

### 🖼️ Interface Preview
> **Note:** Here you can include a link to your live demo or screenshots of your Lovable interface.
* **Live App:** [Mielecita Sweet Cart](https://mielecita-sweet-cart.lovable.app/)

\`\`\`bash
# Internal logic example: How the system validates stock before a sale
SELECT check_inventory_and_process_sale(product_id, quantity_requested);
\`\`\`
## 🏛️ Architecture & Tech Stack

The **Mielecita** system follows a **Decoupled Client-Server Architecture**, which ensures that the user interface (Frontend) and the data management (Backend) operate independently but communicate seamlessly via API.

### 🏗️ Architectural Pattern
* **Database-First Logic:** The core business rules (security, inventory control) are handled directly in the database using PostgreSQL triggers and constraints.
* **Cloud Integration:** Real-time data synchronization between **Supabase** and the **Lovable** interface.
* **Security Layer:** Row Level Security (RLS) and custom SQL functions to protect user data.

### 🛠️ Technology Stack
* **Core Language:** SQL (PostgreSQL / PL-pgSQL) for all business logic.
* **Frontend Framework:** React + Vite (Automated and optimized by **Lovable.dev**).
* **Database Engine:** **Supabase Cloud**, providing a robust PostgreSQL environment.
* **UI/UX Design:** **Figma**, used for the initial high-fidelity prototyping.
* **Authentication:** Integrated OAuth and custom logic for domain restriction (@gmail.com).

\`\`\`sql
-- Example of the decoupled logic: 
-- A trigger handles stock validation independently of the frontend UI.
CREATE TRIGGER trg_check_stock
BEFORE INSERT ON sales_details
FOR EACH ROW EXECUTE FUNCTION validate_inventory();
\`\`\`
## 📄 License

Distributed under the **MIT License**. This license allows others to use, copy, modify, merge, and even sell the software, as long as they include the original copyright notice and this permission notice.

For more information, please see the `LICENSE` file included in this repository.

---
# 📋 User Stories & Acceptance Criteria (Gherkin)

Este documento detalla las historias de usuario y los criterios de aceptación técnicos para el sistema **Mielecita**.

---

### **US-01: Sincronización en Tiempo Real (Personal/Cliente)**
**Como** Administrador de Mielecita,  
**quiero** que los cambios realizados en el portal de personal se reflejen instantáneamente en la vista del cliente,  
**para** evitar que se vendan productos con precios desactualizados.

* **Escenario: Actualización de precio exitosa**
    * **Given** que el administrador está en el portal de personal.
    * **And** modifica el precio de un "Pastel de Chocolate" de $200 a $250.
    * **When** el administrador guarda el cambio.
    * **Then** el sistema debe actualizar la base de datos central en Supabase.
    * **And** un cliente que esté viendo el catálogo debe ver el precio de $250 sin necesidad de refrescar la página.

---

### **US-02: Acceso Directo por Link (Staff)**
**Como** Personal Administrativo,  
**quiero** entrar al sistema mediante un link personal directo,  
**para** ahorrar tiempo en el proceso de logueo diario.

* **Escenario: Acceso mediante token de seguridad**
    * **Given** que el administrador recibe su link de acceso personal.
    * **When** el administrador hace clic en el link desde un dispositivo autorizado.
    * **Then** el sistema debe validar el token de seguridad del link.
    * **And** debe redirigir al usuario directamente al panel de administración sin pedir credenciales.

---

### **US-03: Integración de Pedidos por QR**
**Como** Cliente en la tienda física,  
**quiero** escanear un código QR para acceder directamente al carrito de compras,  
**para** realizar mi pedido de forma rápida desde mi celular.

* **Escenario: Escaneo de código en mostrador**
    * **Given** que el cliente tiene un dispositivo móvil con cámara.
    * **When** el cliente escanea el código QR ubicado en el mostrador.
    * **Then** el navegador del móvil debe abrir la URL específica del catálogo de Mielecita.
    * **And** debe cargar el catálogo listo para añadir productos al carrito.

---

### **US-04: Validación de Seguridad (Password & Email)**
**Como** Sistema de Seguridad,  
**quiero** validar que las contraseñas tengan 12 caracteres y los correos sean @gmail.com,  
**para** proteger la plataforma de accesos no autorizados.

* **Escenario: Intento de registro con datos inválidos**
    * **Given** que un usuario intenta registrarse.
    * **When** ingresa una contraseña de 8 caracteres o un correo de dominio @outlook.com.
    * **Then** el sistema debe denegar el registro y mostrar un mensaje de error: "La contraseña debe tener 12 caracteres y el correo debe ser @gmail.com".
 ---
## 🧪 Running Tests

Explain how to execute the automated test suites to ensure system integrity and business rule compliance.

### 🛡️ SQL Security & Logic Tests
To verify that the database constraints and triggers are working correctly, execute the test scripts located in `/tests/test_cases.sql` directly in the **Supabase SQL Editor**.

#### 1. Password Strength Test
Verify that the system rejects any attempt to create a user with a password shorter than 12 characters (Requirement US-P3-02).
```sql
-- This should FAIL due to CHECK constraint
INSERT INTO auth.users (@gmail.com, password) 
VALUES ('mielecita@gmail.com', '20070224miel');

<p align="center">
  Made with ❤️ by the Mielecita Team - 2026
</p>
<p align="center">

  Made with ❤️ by the Mielecita Team - 2026

</p>
---
