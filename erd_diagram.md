erDiagram
    CUSTOMERS ||--o{ ORDERS : place
    CAKES ||--o{ ORDERS : contains
    
    CUSTOMERS {
        int customer_id
        string first_name
        string phone_number
    }
    CAKES {
        int cake_id
        string cake_name
        float price
    }

        string name
    }
