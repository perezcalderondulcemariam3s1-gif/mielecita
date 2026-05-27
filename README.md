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
# 🍰 Product Backlog 01: Design & Discovery (Partial 1)
**Goal:** Establish the visual identity and user journey map.

### 🏛️ Epic 01: High-Fidelity Visual Prototyping
#### 📋 User Story: Interactive Menu Experience
**As a** Customer,  
**I want to** explore a digital menu that mirrors the physical shop's aesthetics,  
**So that** I feel confident about the quality of the products I am purchasing.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Seamless Category Navigation.
        * **Given** the user accesses the Mielecita prototype.
        * **When** they select the "Ice Cream" category.
        * **Then** the system must display 10 different flavors with high-quality images and prices.
    * **Scenario:** Strategic Pivot due to Budget Constraints.
        * **Given** the design is completed in Figma.
        * **When** the platform requires an unplanned $18 USD payment to continue.
        * **Then** the Scrum Master must order the migration to Lovable to maintain a zero-cost structure.

---

# 🍰 Product Backlog 02: Structural Implementation (Partial 2)
**Goal:** Create a secure digital warehouse for Mielecita's data.

### 🏛️ Epic 02: Secure Inventory Infrastructure
#### 📋 User Story: Protected Database Management
**As a** Shop Manager,  
**I want to** store the 50 products in a private and secure internal server,  
**So that** competitors cannot access our inventory levels or pricing strategies.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Bulk Inventory Verification.
        * **Given** the database is connected via Lovable's internal Supabase.
        * **When** the manager checks the "Snacks" table.
        * **Then** it must contain exactly 10 unique items, each with 10 units in stock.
    * **Scenario:** External Threat Prevention.
        * **Given** an attempt to connect via external tools (e.g., DataGrip).
        * **When** the system detects the connection request.
        * **Then** it must trigger an automatic block to protect the project's data.

---

# 🍰 Product Backlog 03: DBA Power & Security (Partial 3)
**Goal:** System hardening with professional security, business intelligence, and real-time sync.

### 🏛️ Epic 03: Critical Authentication & Data Shield
#### 📋 User Story: Secure Access Protocol
**As a** Security Administrator,  
**I want to** enforce strict registration rules,  
**So that** we prevent fake accounts and protect our customers' privacy.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Strict Password Enforcement.
        * **Given** a registration form. **When** the user provides a 12-character password and a @gmail.com email. **Then** the account is successfully created.
    * **Scenario:** Short Password Rejection.
        * **Given** a user entering an 11-character password. **When** they submit. **Then** the system displays: "Error: Security standard requires 12 characters minimum."

### 🏛️ Epic 04: Omnichannel Sync & Smart Access
#### 📋 User Story: Real-Time Inventory Coordination
**As a** Staff Member,  
**I want** any change made in the back-office to be visible to customers immediately,  
**So that** we avoid selling out-of-stock items.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Instant Price Sync via QR.
        * **Given** a customer scanning the store's QR code. **When** the staff updates "Drinks" prices. **Then** the customer's view must update in less than 2 seconds.

### 🏛️ Epic 05: Business Intelligence (The DBA's Power)
#### 📋 User Story: Advanced Financial Analytics
**As a** Business Owner,  
**I want to** generate intelligence reports using Joins and Aggregates,  
**So that** I can identify the most profitable product category.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Category Revenue Report.
        * **Given** the sales database with active JOINs. **When** I request the total revenue for "Desserts". **Then** the system calculates the sum using SQL SUM functions.

### 🏛️ Epic 06: Reliability & Disaster Recovery
#### 📋 User Story: Data Integrity Guarantee
**As a** DBA,  
**I want to** have a documented backup and recovery strategy,  
**So that** the shop can recover from technical failures in minutes.

* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Full System Restoration.
        * **Given** a database failure. **When** the DBA initiates the SQL restore process. **Then** all 5 categories and 50 products must be restored with 100% accuracy.

---

# 📂 Software Requirements Specification (SRS) - Mielecita

## 1. Functional Requirements (FR)
1. **FR-01: Domain Validation:** The system shall restrict registrations to `@gmail.com` domains only.
2. **FR-02: Stock Control:** The database shall implement SQL Triggers to block sales when quantity reaches zero.
3. **FR-03: Smart Access:** Administrative access via secure, time-sensitive token links for staff.
4. **FR-04: Content Filter:** Block inappropriate usernames using a predefined blacklist.

## 2. Non-Functional Requirements (NFR)
1. **NFR-01: Data Security:** Mandatory 12-character minimum password complexity.
2. **NFR-02: User Feedback:** Immediate UI feedback for authentication errors (e.g., "Incorrect password").
3. **NFR-03: Performance:** Real-time data sync with latency of less than 2 seconds.

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
