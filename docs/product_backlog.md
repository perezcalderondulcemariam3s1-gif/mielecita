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
