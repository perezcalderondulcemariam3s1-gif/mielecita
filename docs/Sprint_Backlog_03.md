# 📋 Sprint Backlog 03: Security Hardening & Business Intelligence (Third Partial)

**Sprint Goal:** Enforce industrial-grade security (RLS) and advanced SQL analytics to protect business data and calculate profitability.

## 1. User Story Details
* **ID:** US-MLS-03-01 (Hardening & Analytics)
* **Story Points:** 8
* **Description:** *As a* Shop Owner, *I want to* activate Row Level Security (RLS) and view revenue reports, *so that* my data is shielded from attacks and I can identify my most profitable categories.

## 2. Acceptance Criteria (Gherkin)
* **Scenario: Unauthorized Access Block (RLS Shield)**
    * **Given** that the database has RLS policies active.
    * **When** an external anonymous user tries to delete or modify a sale record via console.
    * **Then** the database must block the transaction and protect business integrity.

## 3. Weekly Execution Roadmap (Total: 12 Hours)
* **Phase 1: Professional Security Hardening (4 Hours - DBA)**
    * Write RLS policies (Public Read vs. Auth Write).
    * Enforce 12-character professional password standards.
* **Phase 2: Business Intelligence Logic (4 Hours - SQL)**
    * Create SQL Aggregate functions (`SUM`, `JOIN`) for category revenue reports.
    * Implement Database Triggers to auto-hide products when stock hits zero.
* **Phase 3: Analytics Dashboard (4 Hours - UI)**
    * Design visual charts for the owner to track weekly profits.

## 4. Impediments & Dependencies
* **Dependency:** Test sale data is required to validate report accuracy.
* **Impediment:** None identified.

## 5. Friday Milestone: "The Walking Skeleton"
* **Milestone:** A hardened admin portal that identifies the best-selling category of the week.

## 6. Definition of Done (DoD)
* [ ] Zero security warnings in Supabase/Lovable console (RLS Enabled).
* [ ] Profitability reports validated with 100% accuracy.
* [ ] Disaster recovery and backup plan updated.
* [ ] 
