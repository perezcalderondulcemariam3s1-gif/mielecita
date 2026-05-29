# 📋 Sprint Backlog 02: Real-Time Sync & Staff Identity (Second Partial)

**Sprint Goal:** Implement a secure staff authentication system and real-time synchronization to bridge the gap between shop inventory and customer view.

## 1. User Story Details
* **ID:** US-MLS-02-01 (Staff Sync)
* **Story Points:** 8
* **Description:** *As a* Shop Owner, *I want to* update prices and availability from a private dashboard, *so that* customers always see accurate data when scanning the QR code.

## 2. Acceptance Criteria (Gherkin)
* **Scenario: Instant Stock Update**
    * **Given** a customer is viewing the menu on their device.
    * **When** the staff marks a product as "Out of Stock" in the admin panel.
    * **Then** the customer's screen must update automatically in less than 2 seconds without a page refresh.

## 3. Weekly Execution Roadmap (Total: 12 Hours)
* **Phase 1: Identity & Authentication (4 Hours - Backend)**
    * Configure Google Auth restricted to `@gmail.com` domains.
    * Implement secure session management for staff members.
* **Phase 2: Infrastructure & Real-Time (4 Hours - Cloud)**
    * Enable Supabase Realtime replication for inventory tables.
* **Phase 3: Admin Presentation Layer (4 Hours - UI)**
    * Build the "Stock Manager" interface for quick on-the-go edits.

## 4. Impediments & Dependencies
* **Dependency:** Sprint 01 must be stable to connect the editing logic.
* **Impediment:** Local shop Wi-Fi stability for testing low-latency sync.

## 5. Friday Milestone: "The Walking Skeleton"
* **Milestone:** A "Live Sync" system where a price change in the office reflects on the customer's phone instantly.

## 6. Definition of Done (DoD)
* [ ] Secure login restricted to authorized staff.
* [ ] Synchronization latency tested under 2 seconds.
* [ ] English code documentation completed.
* [ ] 
