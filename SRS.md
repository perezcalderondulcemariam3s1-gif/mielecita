# 📝 Software Requirements Specification (SRS) - Project Mielecita
**System:** Mielecita Bakery E-Commerce Ecosystem (2026 Release)  
**Authors:** Mielecita Scrum Team  
**Standard Compliance:** IEEE 830-1998 Guidelines  

---

## 1. Introduction

### 1.1 Purpose
This document specifies the comprehensive functional, non-functional, and data security requirements for the Mielecita Bakery E-Commerce Platform. It provides a definitive engineering blueprint for stakeholders, developers, and testers to validate system integration during final project audits.

### 1.2 Product Scope
Mielecita is a cloud-first retail and administrative platform designed to modernize artisanal bakery operations. The system manages an inventory of 100+ gourmet products, guarantees real-time synchronization between clients and staff, enforces bulletproof database isolation via Row Level Security (RLS), and tracks internal administrative deltas.

### 1.3 Definitions, Acronyms, and Abbreviations
* **SRS:** Software Requirements Specification.
* **3NF:** Third Normal Form (Database design strategy to eliminate redundancy).
* **RLS:** Row Level Security (Database policies that restrict row access based on user roles).
* **HIBP:** Have I Been Pwned (API layer checking for compromised public credentials).
* **DoD:** Definition of Done.

---

## 2. Overall Description

### 2.1 Product Perspective
The Mielecita platform follows a modern decoupled architecture. The user interface compiles on top of a React state engine (powered by Lovable.app), which communicates directly through authenticated, secure REST and WebSocket APIs to a cloud-native PostgreSQL data management layer (hosted via Supabase).

### 2.2 Product Functions
The ecosystem delivers three core operation areas:
1. **Premium Customer Catalog:** High-res layout cards grid featuring automated dynamic out-of-stock lockouts.
2. **Secure Staff Interface:** Parametric-driven administrative routing enabling seamless catalog and ticket management.
3. **Automated Audit Infrastructure:** Real-time logging triggers recording data mutations and unauthorized perimeter actions.

### 2.3 User Classes and Characteristics
* **Visitors / Clients:** General public accessing the catalog from storefront QR web nodes or direct links. Can browse items and place bakery orders.
* **Staff Operators (Dulce & Wendy):** Authenticated internal managers operating under administrative clearance with full catalog manipulation permissions.
* **System Administrator:** High-level database supervisor with absolute schema modification capabilities.

---

## 3. Specific Requirements

### 3.1 Functional Requirements

#### 3.1.1 Parametric Administrative Access & Session Bootstrap
* **ID:** REQ-F-01  
* **Description:** The system must process direct staff entries using dynamic parametric routing to eliminate standard CORS / HTTP 403 input errors.
* **Technical Protocol:**
  * When a staff operator requests the URL pattern `/personal/:nombre/:password/staff`.
  * If `:nombre` matches "Dulce" or "Wendy" AND `:password` matches "20070224miel".
  * **Then** the application must bootstrap the session under the `personal@mielecita.local` system claims profile, store the explicit operator name in the local execution context, and grant access to the admin dashboard.

#### 3.1.2 Automated Data Mutation Auditing
* **ID:** REQ-F-02  
* **Description:** Every catalog modification executed by staff operators must create an unalterable tracking trail in the cloud base.
* **Technical Protocol:**
  * Any `INSERT`, `UPDATE`, or `DELETE` command targeting prices, stocks, or item descriptions must trigger a server-side `SECURITY DEFINER` function.
  * The system must write a row into the `staff_activity_log` table documenting the specific operator name (Dulce or Wendy), the execution timestamp, and the data delta parameters.

#### 3.1.3 Real-Time Zero-Stock Interceptor (Out-of-Stock)
* **ID:** REQ-F-03  
* **Description:** The digital catalog must enforce inventory boundaries instantly across all active customer displays.
* **Technical Protocol:**
  * When a customer sale or manual database override reduces an item count down to 0 inside the `INVENTORY` table.
  * The database manager must fire an immediate real-time WebSocket broadcast event via Supabase.
  * In less than 2.0 seconds, the client frontend interface must switch the corresponding product card asset layout to a grayscale filter, disable the buy button click event, and render an explicit `"Agotado"` banner.

#### 3.1.4 Order Processing & Transaction Lifecycle
* **ID:** REQ-F-04  
* **Description:** Customer checkout submissions must update financial states and stock availability synchronously.
* **Technical Protocol:**
  * Successful checkout operations must perform atomic inserts across `SALES` and `SALES_DETAILS` tables.
  * A post-transaction logic routine must decrement the selected quantities from the matching rows in `INVENTORY`.
  * The incoming ticket must populate in the staff dashboard with distinct options for operators to "Aceptar" (Approve) or "Rechazar" (Deny) the execution status.

---

### 3.2 Non-Functional Requirements

#### 3.2.1 Security & Perimeter Restrictions
* **ID:** REQ-NF-01  
* **Data Sanitization:** All password parameters must process through minimum 12-character constraint validators and interface checks against the HIBP exposed credential lists.
* **Database Isolation (RLS):** Policies must explicitly block unauthorized public scripts from targeting critical organizational datasets (`pedidos`, `productos`, `promociones`). Any unauthenticated request calling a data mutation function must fail with an immediate HTTP 403 Forbidden error.

#### 3.2.2 Performance & Availability
* **ID:** REQ-NF-02  
* **Latency Threshold:** Real-time data sync propagation between staff inventory modifications and customer grid view states must finish within a maximum 2.0-second time boundary.
* **Responsive Scaling:** User interfaces must dynamically scale viewport layouts across smartphones, tablets, and desktop displays using optimized mobile-first CSS classes.

---

## 4. Data Requirements & Normalization Matrix

The system guarantees structural normalization compliance up to the Third Normal Form (3NF). Core business models map according to the following entities:

