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


# Mielecita Pastry Shop: Professional Product Backlog

## Product Goal
> "To build a professional, secure, and synchronized sales platform that positions Mielecita Pastry Shop as a local technological leader. The ecosystem will manage a curated catalog of 50 gourmet products distributed across 5 strategic categories, ensuring a seamless user experience, financial data integrity through automated calculations, and industrial-grade security to protect business intelligence and customer data."

---

## Epics & User Stories

### Epic 1: Identity, Security & Cloud Infrastructure
> *Focuses on securing user access, maintaining session integrity, and establishing a robust cloud database connection required to protect business intelligence.*

#### User Story #1: Elite Authentication & Domain Validation
**Description:**
*As an* administrator and customer,
*I want to* sign up and log in exclusively using @gmail.com emails and 12-character passwords,
*So that* my account is protected under professional standards and the customer database remains legitimate and secure.

**Acceptance Criteria:**
* **Scenario 1: Strict corporate domain validation**
  * **Given** the user is on the registration screen,
  * **When** they attempt to enter an email that does not belong to the @gmail.com domain,
  * **Then** the system must block the registration and display a warning message indicating the domain restriction.
* **Scenario 2: Password complexity compliance**
  * **Given** the user is creating their access credentials,
  * **When** they enter a password shorter than 12 characters,
  * **Then** the system must prevent account creation and show a minimum security standard error.
* **Scenario 3: External intrusion prevention (DBA Shield)**
  * **Given** an unauthorized connection attempt from external tools (e.g., DataGrip),
  * **When** the database firewall detects the request,
  * **Then** it must trigger an automatic block to maintain the privacy of prices and recipes.

#### User Story #2: Real-Time Inventory Synchronization
**Description:**
*As* pastry shop staff,
*I want* any changes to products (prices or stock) to be saved to the cloud database and reflected instantly,
*So that* customers always see accurate information when scanning the QR code in the physical store.

**Acceptance Criteria:**
* **Scenario 1: Reactive menu update**
  * **Given** a customer is viewing the digital menu,
  * **When** the administrator changes a product's price in the database,
  * **Then** the customer interface must update in less than 2 seconds without requiring a page refresh.
* **Scenario 2: Data protection by Category ID**
  * **Given** the system records a sale,
  * **When** it is saved to the transactions table,
  * **Then** each record must be correctly linked to its category (Drinks, Desserts, Ice Cream, Jellies, Snacks) to maintain relational integrity.

---

### Epic 2: Business Intelligence & Sales Management
> *Focuses on the core functionalities that allow the owner to interact with sales and stock data, providing analytical reports and automated inventory control.*

#### User Story #3: Automated Stock Management (Zero-Waste Guard)
**Description:**
*As a* business owner,
*I want* the system to automatically block sales when inventory reaches zero,
*So that* we do not make sales promises that we cannot fulfill in the physical kitchen.

**Acceptance Criteria:**
* **Scenario 1: Out-of-stock sale block (SQL Triggers)**
  * **Given** that a product has 0 units in stock,
  * **When** a customer attempts to add it to the cart or purchase it,
  * **Then** the system must display an "OUT OF STOCK" status and disable the purchase button.
* **Scenario 2: Bulk inventory verification**
  * **Given** the manager consults the inventory table,
  * **When** they review any category,
  * **Then** the system must confirm that exactly 10 unique items exist with 10 initial units each.

#### User Story #4: Profitability Reports (DBA Analytics)
**Description:**
*As a* business owner,
*I want to* generate financial reports that sum sales by category using Joins and aggregate functions,
*So that* I can visually identify which of the 5 pastry areas is the most profitable.

**Acceptance Criteria:**
* **Scenario 1: Total revenue calculation by category**
  * **Given** the database with recorded sales,
  * **When** the administrator requests a report for "Desserts",
  * **Then** the system must execute a SQL SUM query that returns the exact total revenue for that specific category.

---

## Future Backlog (Out of Current Scope)
> *Represents future iterations and scalability opportunities that will be addressed in upcoming sprints.*

**Feature Enhancements:**
* **Loyalty Module:** Implement a points system for frequent Mielecita customers.
* **Digital Payment Gateway:** Integrate credit/debit card payments directly into the platform.
* **Notification System:** Alert staff when a high-demand product drops below 3 units in stock.

**Technical Debt & Refactoring:**
* **Disaster Recovery Automation:** Automate full weekly backups to ensure the recovery of all 50 products in less than 5 minutes in case of server failure.
* **UI Optimization:** Modularize interface components in Lovable to improve load times on older mobile devices.
---
# 📂 Software Specifications (Business Rules)

## 1. How the system works for the Business (Functional)
1. **Verified Customers:** Only official Gmail accounts can register, ensuring a clean and real customer base.
2. **Automated Stock Guard:** The system is smart enough to stop a sale if a product is not physically available in the kitchen.
3. **Instant QR Updates:** When prices change in the office, they update on the customer’s phone in less than 2 seconds via QR code.

## 2. Quality & Security Standards (Non-Functional)
1. **Military-Grade Security:** All passwords must meet the 12-character professional standard.
2. **High-Speed Performance:** No waiting. The menu loads and updates in real-time.
3. **User-Friendly Feedback:** The system talks to the user. If they make a mistake during login, it explains exactly what happened in simple terms.
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
