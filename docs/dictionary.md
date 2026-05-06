# Data Dictionary - Project 2026: Mielecita Bakery

This document provides a detailed technical description of the database structure to ensure consistency and Third Normal Form (3FN) compliance.

---

## 1. USERS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **user_id** | INT | PK | AUTO_INCREMENT | Unique identifier for each system user. |
| **username** | VARCHAR(50) | - | UNIQUE, NOT NULL | Unique alias for system login. |
| **email** | VARCHAR(255) | - | UNIQUE, NOT NULL | Unique email address for authentication. |
| **password** | VARCHAR(255) | - | NOT NULL | Hashed password for security (BCrypt). |
| **role** | ENUM | - | NOT NULL | Access level: 'Admin', 'Staff', 'Client'. |

## 2. CUSTOMERS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **customer_id** | INT | PK | - | Unique identifier for the customer profile. |
| **user_id** | INT | FK | UNIQUE, NOT NULL | Reference to USERS (1:1 Specialization). |
| **phone** | VARCHAR(20) | - | - | Contact phone number for shipping. |
| **address** | VARCHAR(255) | - | - | Physical address for delivery purposes. |

## 3. EMPLOYEES Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **employee_id** | INT | PK | - | Unique staff identification number. |
| **user_id** | INT | FK | UNIQUE, NOT NULL | Reference to USERS (1:1 Specialization). |
| **position** | VARCHAR(50) | - | - | Employee's job title (e.g., 'Cashier'). |
| **hire_date** | DATE | - | DEFAULT Today | Date when the employee joined the bakery. |

## 4. CATEGORIES Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **category_id** | INT | PK | AUTO_INCREMENT | Unique ID for grouping products. |
| **name** | VARCHAR(50) | - | NOT NULL | Category name (e.g., 'Cakes', 'Drinks'). |

## 5. PRODUCTS Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **product_id** | INT | PK | AUTO_INCREMENT | Unique identifier for each product. |
| **category_id** | INT | FK | NOT NULL | Reference to the CATEGORIES table. |
| **name** | VARCHAR(100) | - | NOT NULL | Commercial name of the item. |
| **description** | TEXT | - | - | Detailed description of the product. |
| **price** | DECIMAL(10,2) | - | CHECK (price > 0) | Unit price (Must be positive). |

## 6. SALES Table
| Column | Type | Key | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **sale_id** | INT | PK | AUTO_INCREMENT | Unique transaction ID for each sale. |
| **customer_id** | INT | FK | - | Reference to the customer who bought. |
| **employee_id** | INT | FK | - | Reference to the employee who sold. |
| **sale_date** | DATETIME | - | DEFAULT Now | Timestamp of the transaction. |
| **total_amount** | DECIMAL
