# 📋 Data Dictionary - Project 2026: Mielecita Pastry Shop (Third Partial Hardened Version)

This document provides a detailed technical description of the database structure to ensure consistency, Third Normal Form (3NF) compliance, and strict Row Level Security (RLS) tracking audits.

---

## 1. USERS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **user_id** | INT | PK | AUTO_INCREMENT | Unique identifier for each system user. |
| **username** | VARCHAR(50) | - | UNIQUE, NOT NULL | Unique alias for system login. |
| **email** | VARCHAR(255) | - | UNIQUE, NOT NULL, CHECK | User email. Client must be `@gmail.com`. Staff mapped to `personal@mielecita.local`. |
| **password** | VARCHAR(255) | - | NOT NULL, CHECK | Hashed password. Enforces **Min 12 characters** and validates against HIBP breached api filters. |
| **role** | ENUM | - | NOT NULL | Access level rules: 'Admin', 'Staff', 'Client' (Enforces RLS routing). |
| **is_active** | BOOLEAN | - | DEFAULT TRUE | Tracks if the user profile has active system permissions. |

## 2. CUSTOMERS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **customer_id** | INT | PK | AUTO_INCREMENT | Unique identifier for the customer profile. |
| **user_id** | INT | FK | UNIQUE, NOT NULL | Reference to USERS table (1:1 Specialization structure). |
| **phone** | VARCHAR(20) | - | NOT NULL | Contact phone number for shipping and confirmation logs. |
| **address** | VARCHAR(255) | - | NOT NULL | Physical address for delivery purposes. |
| **birth_date** | DATE | - | - | Customer's date of birth for loyalty promotions. |

## 3. EMPLOYEES Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **employee_id** | INT | PK | AUTO_INCREMENT | Unique staff identification number. |
| **user_id** | INT | FK | UNIQUE, NOT NULL | Reference to USERS table (1:1 Specialization structure). |
| **branch_id** | INT | FK | NOT NULL | Reference to the BRANCHES table. |
| **position** | VARCHAR(50) | - | NOT NULL | Employee's job title (e.g., 'Cashier', 'Baker', 'Staff'). |
| **salary** | DECIMAL(10,2) | - | CHECK (salary > 0) | Monthly staff compensation amount. |
| **hire_date** | DATE | - | DEFAULT CURRENT_DATE | Operational date when the employee joined the pastry shop. |

## 4. CATEGORIES Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **category_id** | INT | PK | AUTO_INCREMENT | Unique ID for grouping the core 5 pastry divisions. |
| **name** | VARCHAR(50) | - | NOT NULL, UNIQUE | Category name (Pastries, Drinks, Snacks, Gelatins, Ice Cream). |

## 5. PRODUCTS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **product_id** | INT | PK | AUTO_INCREMENT | Unique identifier for each of the 100 gourmet items. |
| **category_id** | INT | FK | NOT NULL | Reference to the CATEGORIES table. |
| **name** | VARCHAR(100) | - | NOT NULL | Commercial name of the pastry item. |
| **description** | TEXT | - | - | Detailed text specifications and ingredients description. |
| **price** | DECIMAL(10,2) | - | CHECK (price > 0) | Unit price. **Monitored by Security Definer Trigger** for audit logs. |
| **image_url** | VARCHAR(255) | - | - | Cloud asset storage location path for premium grid rendering. |
| **servings** | VARCHAR(50) | - | - | Portion metrics notation (e.g., '10-15 people'). |

## 6. SALES Table (Completed & Fixed)
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **sale_id** | INT | PK | AUTO_INCREMENT | Unique transaction ID for each completed purchase. |
| **customer_id** | INT | FK | - | Reference to the CUSTOMERS profile who executed the buy order. |
| **employee_id** | INT | FK | - | Reference to the EMPLOYEES profile who processed the ticket. |
| **branch_id** | INT | FK | NOT NULL | Reference to the BRANCHES table tracking origin point. |
| **promotion_id** | INT | FK | - | Reference to PROMOTIONS table (Nullable if no coupon applied). |
| **sale_date** | DATETIME | - | DEFAULT CURRENT_TIMESTAMP | Precise timestamp when transaction row was written. |
| **total_amount** | DECIMAL(10,2) | - | CHECK (total_amount >= 0) | Final purchase total amount computed via database aggregates. |
| **payment_type** | VARCHAR(30) | - | NOT NULL | Settlement choice parameters: 'Cash', 'Card', 'App-Transfer'. |

## 7. SALES_DETAILS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **sale_detail_id** | INT | PK | AUTO_INCREMENT | Unique relational key for item breakdown structures. |
| **sale_id** | INT | FK | NOT NULL | Structural link mapping back to parent SALES block. |
| **product_id** | INT | FK | NOT NULL | Target inventory item identity tracking parameters. |
| **quantity** | INT | - | CHECK (quantity > 0) | Amout of elements bought. Triggers autonomous inventory decrease. |
| **unit_price** | DECIMAL(10,2) | - | CHECK (unit_price > 0) | Item historical price point copied during active transaction. |
| **subtotal** | DECIMAL(10,2) | - | CHECK (subtotal > 0) | Computed value ($quantity \times unit\_price$). |

## 8. INVENTORY Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **inventory_id** | INT | PK | AUTO_INCREMENT | Unique structural row tracker. |
| **product_id** | INT | FK | NOT NULL | Relational product mapping key link parameters. |
| **branch_id** | INT | FK | NOT NULL | Target physical storefront warehouse location. |
| **stock** | INT | - | CHECK (stock >= 0) | Active product count. **Controlled by Triggers** to block sales at 0. |
| **min_stock** | INT | - | DEFAULT 5 | Safe buffer margin count tracking threshold alerts. |

## 9. PROMOTIONS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **promotion_id** | INT | PK | AUTO_INCREMENT | Unique campaign tracking row primary index. |
| **name** | VARCHAR(100) | - | NOT NULL | Marketing code description string layout. |
| **discount_percentage** | DECIMAL(5,2) | - | CHECK (discount_percentage > 0) | Value mapping parameter deduction rates (e.g., 15.00 for 15%). |
| **start_date** | DATE | - | NOT NULL | Initialization window boundary timestamp constraint. |
| **end_date** | DATE | - | NOT NULL | Final validation expiration boundary constraint. |

---

## 🛡️ THIRD PARTIAL SECURITY & AUDITING SYSTEM TABLES

## 10. STAFF_ACTIVITY_LOG Table
> **Implementation Note:** Populated strictly through autonomous database `SECURITY DEFINER` triggers when critical attributes (like prices) are altered.

| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **log_id** | INT | PK | AUTO_INCREMENT | Immutable internal logging event ID tracking index. |
| **user_id** | INT | FK | NOT NULL | Identifies the authenticated operator responsible for the change. |
| **operation_type** | VARCHAR(15) | - | NOT NULL | Action vector identification tag: 'INSERT', 'UPDATE', 'DELETE'. |
| **table_name** | VARCHAR(50) | - | NOT NULL | Identifies target catalog modifications location (`productos`, etc.). |
| **description** | TEXT | - | NOT NULL | Long text parameter documenting previous vs new row delta records. |
| **timestamp** | DATETIME | - | DEFAULT CURRENT_TIMESTAMP | Exact server runtime metric marking alteration point. |

## 11. STAFF_ACCESS_ATTEMPTS Table
> **Implementation Note:** Used to log perimeter handshake attempts, CORS origin tracking discrepancies, and Row Level Security (RLS) filter bypass blocks.

| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **attempt_id** | INT | PK | AUTO_INCREMENT | Unique security telemetry transaction tracking key index. |
| **user_id** | INT | FK | NULLABLE | Maps system identity profile matches if execution vector is known. |
| **attempted_email** | VARCHAR(255) | - | NOT NULL | Raw string capture input processed during token authentication. |
| **ip_address** | VARCHAR(45) | - | NOT NULL | Network interface identification parameter parsing context. |
| **origin_url** | VARCHAR(255) | - | NOT NULL | CORS origin endpoint string passed during login requests. |
| **status** | VARCHAR(30) | - | NOT NULL | Final system response state: 'SUCCESS', 'REJECTED_CORS', 'REJECTED_RLS'. |
| **timestamp** | DATETIME | - | DEFAULT CURRENT_TIMESTAMP | Time logging parameter monitoring real-time perimeter events. |
