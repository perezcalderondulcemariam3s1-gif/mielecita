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



### 🎨 Phase 1: Prototyping (Figma)

*Focus: User Experience (UX) and Visual Identity.*

* [x] **US-P1-01:** Branding and "Mielecita" visual identity definition.

* [x] **US-P1-02:** Low-fidelity Wireframes for navigation flow.

* [x] **US-P1-03:** Interactive Figma prototype (Login & Catalog screens).



### 🔌 Phase 2: Implementation (Lovable & SQL)

*Focus: Database connectivity and functional catalog.*

* [x] **US-P2-01:** UI migration from Figma to Lovable components.

* [x] **US-P2-02:** Database Schema design in Supabase (DDL).

* [x] **US-P2-03:** Bulk loading of **100 real products** (Seed Data).

* [x] **US-P2-04:** Dynamic category filtering (Pastries, Drinks, Snacks, etc.).



### 🔐 Phase 3: Security & Business Rules (Final Polish)

*Focus: Data integrity, advanced validation, and maintenance.*

* [x] **US-P3-01:** **Email Validation:** Restrict access to `@gmail.com` domains only.

* [x] **US-P3-02:** **Password Strength:** Minimum **12 characters** requirement for new users.

* [x] **US-P3-03:** **Stock Integrity:** SQL **Triggers** to block sales when inventory is zero.

* [x] **US-P3-04:** **Safe Maintenance:** Transaction protocols for `UPDATE` and `DELETE` operations.



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

<p align="center">

  Made with ❤️ by the Mielecita Team - 2026

</p>
