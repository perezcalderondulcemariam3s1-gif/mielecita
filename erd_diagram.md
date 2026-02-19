erDiagram
    %% 1. Definir Relaciones (Cardinalidad)
    USERS ||--o| CUSTOMERS : "is"
    CATEGORIES ||--o{ PRODUCTS : "contains"

    %% 2. Definir Tablas y Atributos
    USERS {
        int user_id PK
        string username
        string email
        string password
    }
    
    CUSTOMERS {
        int customer_id PK
        int user_id FK
        string address
    }
    
