# 🍰 Project Mielecita: Digital Transformation & E-commerce Strategy

> **Status:** Deployment Ready  
> **Target:** [Mielecita Sweet Cart Live](https://mielecita-sweet-cart.lovable.app/)  
> **Reference Model:** [Olyess Pastelerías](https://olyesspastelerias.com/)

---

## 🎯 Executive Summary & Objectives
The **Mielecita** project was conceived to revolutionize a traditional artisanal bakery by implementing a high-performance E-commerce platform. Inspired by the professional standards of **Olyess**, our mission was to bridge the gap between "brick-and-mortar" sales and a "cloud-first" retail experience.

**Key Goals:**
* **Scalability:** Manage a complex inventory of **100+ gourmet products**.
* **Security:** Implement industrial-grade authentication and data sanitization.
* **UX Excellence:** Provide a seamless, responsive interface using **Lovable** and **Tailwind CSS**.
* **Data Integrity:** Ensure 100% accuracy in stock levels and financial calculations via **PostgreSQL**.

---

## 🛠 Advanced Technical Stack
* **Prototyping:** Figma (High-fidelity UI/UX design).
* **Frontend Architecture:** React.js + Vite (Powered by Lovable.app).
* **Backend & Infrastructure:** Supabase (Cloud-native PostgreSQL).
* **Server-Side Logic:** PL/pgSQL (Triggers, Functions, and Views).
* **Security Protocols:** Row Level Security (RLS) & Regex-based Constraints.

---

## 📈 Evolutionary Product Backlog (Sprints 1-3)

| ID | Feature Category | User Story Summary | Technical Goal | Status |
| :--- | :--- | :--- | :--- | :--- |
| **US01** | **Identity** | As a visitor, I want a premium landing page to identify the Mielecita brand. | Deploy responsive banners and high-res product cards. | ✅ |
| **US02** | **Security** | As a user, I want a secure login to manage my "Sweet Account." | Implement `@gmail.com` filter and **12-character** password salt/hash. | ✅ |
| **US03** | **Inventory** | As a buyer, I want to browse a catalog of 100+ items with real prices. | Bulk-load via `02_seed.sql` and synchronize with Supabase. | ✅ |
| **US04** | **UX/UI** | As a buyer, I want to filter by 5 categories (Cakes, Drinks, etc.). | Dynamic SQL queries using `WHERE category_id` filters. | ✅ |
| **US05** | **Integrity** | As an owner, I want to prevent sales of out-of-stock products. | Real-time **SQL Triggers** to block `INSERT` on zero stock. | ✅ |
| **US06** | **Reporting** | As an admin, I want to see financial totals without errors. | Create **Database Views** for automated price/tax calculation. | ✅ |

---

## 📝 Comprehensive User Stories (In-Depth Analysis)

### 1. The Secure Authentication Experience (US02)
* **User Statement:** "As a frequent customer, I want to register using a robust password and a verified Gmail account."
* **Business Requirement:** Ensure all users follow modern security standards to protect the customer database.
* **Acceptance Criteria:**
    * Passwords must be at least **12 characters** long.
    * Email inputs must match the `@gmail.com` domain regex.
* **Technical Outcome:** Implemented `CHECK` constraints in the `users` table to enforce data sanitization before the information reaches the backend.

### 2. The Dynamic Catalog & Sidebar Navigation (US04)
* **User Statement:** "As a user looking for a specific dessert, I want a categorized sidebar to find my favorite cake instantly."
* **Business Requirement:** Mimic the professional navigation of **Olyess** where 25% of the UI handles filters and 75% displays results.
* **Acceptance Criteria:**
    * Sidebar buttons for: Pastries, Drinks, Snacks, Gelatins, and Ice Cream.
    * Instant grid updates without page reloads (Virtual DOM).
* **Technical Outcome:** Successfully mapped SQL `category_id` to React state, allowing real-time catalog updates as the user interacts with the sidebar.

### 3. Inventory Protection & Business Rules (US05)
* **User Statement:** "As a customer, I want to be certain that if I buy a 'Pastel Carlos V', it is actually in stock."
* **Business Requirement:** Zero-tolerance policy for stock discrepancies.
* **Acceptance Criteria:**
    * If `inventory.stock` reaches 0, the "Buy" button is disabled.
    * Server-side validation must block transactions even if the UI is bypassed.
* **Technical Outcome:** Developed a **PostgreSQL Trigger** that monitors the `sales_details` table, ensuring the "Sweet Cart" never processes an invalid order.

---

## 🚀 Final Project Impact
By combining the visual elegance of **Figma**, the agility of **Lovable**, and the industrial power of **PostgreSQL**, **Mielecita** stands as a "Perfect" E-commerce prototype. It handles complex data relationships (1:N), enforces strict security, and provides a user experience that rivals professional Mexican pastry websites like **Olyess**.

---
*Documented by the Scrum Master - Mielecita Team 2026*
