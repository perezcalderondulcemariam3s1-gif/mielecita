# 📋 Sprint Backlog 01: The Blueprint & Structural Foundations 

**Sprint Goal:** Establish the visual identity in Figma, design the normalized entity-relationship database schema, and define core business logic rules for Mielecita's 50 gourmet products.

---

## 1. Sprint Capacity & Workload Balance (6-Member Team)
* **Sprint Duration:** 4 Weeks (1 Month)
* **Daily Commitment per Member:** 2 Hours (Monday - Friday)
* **Total Team Capacity:** 240 Hours (40 Hours per member × 6)
* **Total Estimated Team Workload:** 216 Hours (36 Hours per member × 6)
* **Total Team Buffer:** 24 Hours (4 Hours per member × 6)

---

## 2. Selected User Stories (Figma, ERD & Business Rules)

### US-MLS-01-01: High-Fidelity UI/UX Prototyping (Figma)
* **Story Points:** 8 | **Estimated Effort:** 36 Hours
* **Description:** *As an* Analyst & Designer, *I want to* craft responsive prototypes in Figma for the catalog, *so that* stakeholders can approve the premium visual design before coding.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Interactive catalog navigation simulation
    * **Given** that the brand identity and pastry assets are ready.
    * **When** a user clicks through the Figma presentation prototype.
    * **Then** the screen transitions must smoothly demonstrate category switching for all 5 gourmet sections.

### US-MLS-01-02: Relational Database Schema Architecture (ERD Design)
* **Story Points:** 8 | **Estimated Effort:** 36 Hours
* **Description:** *As a* Database Administrator, *I want to* design a normalized Entity-Relationship Diagram (ERD), *so that* inventory records avoid structural redundancies.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** ERD relational integrity enforcement
    * **Given** the system requirements for categories and items.
    * **When** the database schema mapping is fully reviewed.
    * **Then** it must enforce strict foreign key relationships between `products` and `categories` tables supporting a 1-to-many relationship.

### US-MLS-01-03: Business Rules Specification & Item Constraints
* **Story Points:** 5 | **Estimated Effort:** 36 Hours
* **Description:** *As a* Scrum Master, *I want to* coordinate and draft documentation defining the data validations for the 50 products, *so that* data parsing behaves predictably.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Enforcement of pricing constraints
    * **Given** the structural catalog rules document.
    * **When** a record is created.
    * **Then** base prices must be strictly numeric values greater than zero, and categories must match the 5 predefined shop divisions.

### US-MLS-01-04: Customer Digital Menu Workflow Mapping
* **Story Points:** 5 | **Estimated Effort:** 36 Hours
* **Description:** *As a* The Query Master, *I want to* chart user flows from physical QR actions to digital database queries, *so that* customer friction points are identified early.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** User mapping through wireframes
    * **Given** low-fidelity layouts of the user path.
    * **When** evaluating the user journey from entry to checkout.
    * **Then** the blueprint must confirm access to the 50 products within 2 interaction stages maximum.

### US-MLS-01-05: Technical Stack Evaluation & Seed Strategy Setup
* **Story Points:** 5 | **Estimated Effort:** 36 Hours
* **Description:** *As a* SQL Developer, *I want to* design a data seeding strategy script format for the 50 initial items, *so that* cloud migration tasks are clean.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Validating raw spreadsheet translation matrices
    * **Given** a raw data matrix of 50 gourmet pastries.
    * **When** parsed into mock relational datasets.
    * **Then** it must seamlessly map attributes to fit the planned schema parameters.

### US-MLS-01-06: Schema Validation & Integrity Testing
* **Story Points:** 3 | **Estimated Effort:** 36 Hours
* **Description:** *As a* SQL Tester, *I want to* evaluate mock constraint scenarios on the planned schema, *so that* potential data type failures are caught prior to deployment.
* **Acceptance Criteria (Gherkin):**
    * **Scenario:** Preventing NULL values on critical fields
    * **Given** the initial database blueprint.
    * **When** test inserts attempt to bypass product names or pricing attributes.
    * **Then** the validation test suite must drop the operation and return structural constraints errors.

---

## 3. Weekly Execution Roadmap (Tasks & Assignments)

### Phase 1: Conceptual Design & Structural Mapping (72 Hours Total)
* **Task 1.1:** Develop the comprehensive Figma user interfaces for mobile catalog views and interaction paths. (36 Hours)
  * **Assigned to:** Hernandez Nextle Wendy Stefany (Analyst & Designer)
* **Task 1.2:** Map operational workflows bridging physical QR layouts to backend entry points and search paths. (36 Hours)
  * **Assigned to:** Amayo Torres Juan Antonio (The Query Master)

### Phase 2: Relational Architecture & Documentation (72 Hours Total)
* **Task 1.3:** Build the normalized Entity-Relationship Diagram (ERD) defining properties for items and categories. (36 Hours)
  * **Assigned to:** Bañuelos Sandoval Aleri (Database Administrator)
* **Task 1.4:** Standardize structural business rules documentation defining bounds, data constraints, and types. (36 Hours)
  * **Assigned to:** Perez Calderon Dulce Maria (Scrum Master)

### Phase 3: Technical Seeding & Constraint Testing (72 Hours Total)
* **Task 1.5:** Draft initial SQL seeding matrices matching the planned structure for the 50 core product items. (36 Hours)
  * **Assigned to:** Rosales Cortes Joel Raymundo (SQL Developer)
* **Task 1.6:** Run simulation scripts to ensure data type limitations and constraints match business documentation rules. (36 Hours)
  * **Assigned to:** Pozos Urbina Jesus Leonardo (SQL Tester)

---

## 4. Friday Milestone: "The Approved Blueprint"
* **Milestone:** Delivery of a completely mapped out project architecture, including finalized Figma system mockups, a normalized ERD schema, and precise business rules constraints ready for implementation.

---

## 5. Definition of Done (DoD)
* [ ] 100% of Figma views for both client menus and staff setups are approved.
* [ ] The ERD is fully normalized and supports a 50-item data seed matrix.
* [ ] Rules for numeric validation bounds are clearly documented.
* [ ] Every project developer has logged their designated 36-hour task contribution block.
* [ ] Specifications are structured in clean English following Agile engineering principles.
