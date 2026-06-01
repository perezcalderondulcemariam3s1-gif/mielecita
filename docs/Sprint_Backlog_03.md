# 🛡️ Sprint Backlog 03: Security Hardening & Business Intelligence (Third Partial)

**Sprint Goal:** Enforce industrial-grade security, automated stock triggers, and financial analytics to protect and scale Mielecita's operations.

---

## 1. User Story Details (Expanded for 6-Person Team)

### US-MLS-03-01: Row Level Security (RLS) Shield
* **Story Points:** 8 | **Estimated Effort:** 32 hours
* **Description:** *As a* Developer, *I want to* activate RLS policies on all tables, *so that* sensitive business data is only accessible to authorized staff.
* **Acceptance Criteria:**
    * **Scenario:** Unauthorized data modification.
    * **Given** that the database has RLS policies enabled. **When** an anonymous user tries to delete a product. **Then** the database must reject the transaction (403 Forbidden).

### US-MLS-03-02: Zero-Waste Automated Stock Triggers
* **Story Points:** 5 | **Estimated Effort:** 28 hours
* **Description:** *As a* Shop Owner, *I want* the system to auto-block sales when stock hits zero, *so that* I don't overpromise products.
* **Acceptance Criteria:**
    * **Scenario:** Stock depletion.
    * **Given** a product with 0 units. **When** the menu loads. **Then** the purchase button must be disabled automatically.

### US-MLS-03-03: Profitability Analytics Dashboard (Backend & SQL)
* **Story Points:** 13 | **Estimated Effort:** 35 hours
* **Description:** *As a* Business Owner, *I want to* calculate revenue by category using SQL Aggregates, *so that* I can identify my most profitable areas.
* **Acceptance Criteria:**
    * **Scenario:** Financial calculation.
    * **Given** 100+ sales records. **When** the admin runs the report. **Then** the system must return accurate sums per category.

### US-MLS-03-04: Advanced User Access Control (RBAC)
* **Story Points:** 5 | **Estimated Effort:** 30 hours
* **Description:** *As a* Security Lead, *I want to* separate Admin and Staff roles, *so that* only the owner can see financial reports while staff only manages stock.
* **Acceptance Criteria:**
    * **Scenario:** Role restriction.
    * **Given** a user with the 'Staff' role. **When** they try to access the Analytics page. **Then** the system must redirect them to the Inventory page.

### US-MLS-03-05: High-Fidelity Data Visualization (UI)
* **Story Points:** 5 | **Estimated Effort:** 28 hours
* **Description:** *As a* Shop Owner, *I want to* see my sales data in interactive charts, *so that* I can visualize business growth trends.
* **Acceptance Criteria:**
    * **Scenario:** Chart rendering.
    * **Given** the calculated sales data. **When** the dashboard opens. **Then** it must render a Bar Chart showing sales per category.

### US-MLS-03-06: Disaster Recovery & Audit Logs
* **Story Points:** 3 | **Estimated Effort:** 27 hours
* **Description:** *As a* DBA, *I want to* implement an audit log table, *so that* I can track every price change made by the staff for security purposes.
* **Acceptance Criteria:**
    * **Scenario:** Change tracking.
    * **Given** a price update. **When** the staff saves the change. **Then** a new record must be created in the `audit_logs` table with the user ID and timestamp.

---

## 2. Weekly Execution Roadmap (Tasks & Assignments)

### Phase 1: Security & Data Hardening (60 Hours Total)
* **Task 3.1:** Implement RLS Policies for all 50 products and categories. (30 hrs)
  * **Assigned to:** [Integrante 1]
* **Task 3.2:** Configure Role-Based Access Control (RBAC) and JWT validation. (30 hrs)
  * **Assigned to:** [Integrante 2]

### Phase 2: Logic, Triggers & SQL Analytics (70 Hours Total)
* **Task 3.3:** Develop SQL Triggers for stock management and inventory sync. (35 hrs)
  * **Assigned to:** [Integrante 3]
* **Task 3.4:** Create complex SQL Views and Functions for Financial Reports. (35 hrs)
  * **Assigned to:** [Integrante 4]

### Phase 3: Presentation & Integrity (55 Hours Total)
* **Task 3.5:** Design and code the Profitability Dashboard with interactive charts. (28 hrs)
  * **Assigned to:** [Integrante 5]
* **Task 3.6:** Implement Audit Logging and Disaster Recovery procedures. (27 hrs)
  * **Assigned to:** [Integrante 6]

---

## 3. Definition of Done (DoD)
* [ ] RLS enabled on 100% of tables.
* [ ] All 6 team members' tasks integrated into the main branch.
* [ ] Dashboard displays accurate real-time data.
* [ ] Passwords meet 12-character professional standard.
* [ ] Code documented in English following Clean Architecture.
