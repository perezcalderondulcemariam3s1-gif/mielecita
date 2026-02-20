# Data Dictionary - Project 2026

This document provides a detailed technical description of the database structure to ensure consistency and Third Normal Form (3FN) compliance.

---

## 1. USERS Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **user_id** | INT | PK | Unique identifier for each system user. |
| **name** | VARCHAR | - | Full name of the user (Customer or Employee). |
| **email** | VARCHAR | - | Unique email address for authentication. |
| **password** | VARCHAR | - | Hashed password for security. |
| **role** | VARCHAR | - | System role: 'Admin', 'Staff', or 'Client'. |

## 2. CUSTOMERS Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **customer_id** | INT | PK | Unique identifier for the customer profile. |
| **user_id** | INT | FK | Reference to the USERS table for login data. |
| **phone** | VARCHAR | - | Contact phone number for shipping. |
| **address** | TEXT | - | Physical address for delivery purposes. |

## 3. EMPLOYEES Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **employee_id** | INT | PK | Unique staff identification number. |
| **user_id** | INT | FK | Reference to the USERS table for credentials. |
| **job_title** | VARCHAR | - | Employee's position (e.g., 'Cashier', 'Manager'). |

## 4. CATEGORIES Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **category_id** | INT | PK | Unique ID for grouping products. |
| **name** | VARCHAR | - | Name of the category (e.g., 'Food', 'Drinks'). |

## 5. PRODUCTS Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **product_id** | INT | PK | Unique identifier for each product. |
| **name** | VARCHAR | - | Commercial name of the item. |
| **price** | DECIMAL | - | Unit price in decimal format. |
| **category_id** | INT | FK | Reference to the CATEGORIES table. |

## 6. SALES Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **sale_id** | INT | PK | Unique transaction ID for each sale. |
| **customer_id** | INT | FK | Reference to the customer who bought. |
| **employee_id** | INT | FK | Reference to the employee who sold. |
| **sale_date** | DATETIME | - | Timestamp of the transaction. |
| **total** | DECIMAL | - | Total amount of the purchase. |

## 7. SALES_DETAILS Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **detail_id** | INT | PK | Unique ID for each line item in a sale. |
| **sale_id** | INT | FK | Reference to the main SALES record. |
| **product_id** | INT | FK | Reference to the product being sold. |
| **quantity** | INT | - | Number of units purchased. |

## 8. INVENTORY Table
| Column | Type | Key | Description (English) |
| :--- | :--- | :--- | :--- |
| **inventory_id** | INT | PK | Unique ID for stock tracking. |
| **product_id** | INT | FK | Reference to the associated product. |
| **stock** | INT | - | Current units available in storage. |
