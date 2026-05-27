# 📊 Mielecita Digital Ecosystem - Professional Product Backlog

## 🎯 Extended Product Goal
> "Mielecita Pastry Shop's primary objective is to lead the local market through a digital transformation that simplifies the purchasing process for our customers. We aim to implement a professional online sales platform capable of managing a curated inventory of **50 high-quality products**. These products are strategically organized into 5 specialized categories: **Drinks, Desserts, Ice Cream, Jellies, and Snacks**, ensuring a consistent supply of 10 items per category with a mandatory stock of 10 units each. The system's core is a robust, synchronized database that performs precise financial calculations and protects business intelligence through advanced security protocols."

---

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
