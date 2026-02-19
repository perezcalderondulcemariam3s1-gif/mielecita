erDiagram
    USERS ||--o| CUSTOMERS : "is"
    USERS ||--o| EMPLOYEES : "is"
    CATEGORIES ||--o{ PRODUCTS : "contains"
    PRODUCTS ||--o| INVENTORY : "has"
    CUSTOMERS ||--o{ ORDERS : "places"

    USERS {
        int user_id PK
        string name
        string email
        string password
        string role
    }

    CUSTOMERS {
        int customer_id PK
        int user_id FK
        string phone
        string address
    }

    PRODUCTS {
        int product_id PK
        string name
        float price
        int category_id FK
    }

    INVENTORY {
        int inventory_id PK
        int product_id FK
        int stock_quantity
    }
    
