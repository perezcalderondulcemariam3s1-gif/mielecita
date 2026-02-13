# Team Charter: Definición de Roles (ROLES.md)

| Role | Name | Primary Responsibility | Key Artifacts (English) |
| :--- | :--- | :--- | :--- |
| **1. The Analyst** | Hernández Nexthe Wendy Stefany | Traduce las reglas de negocio a un modelo visual y garantiza la Normalización (3FN). | `erd_diagram.mmd`, `dictionary.md` |
| **2. The SQL Developer** | Rosales Cortes Joel Raymundo | Escribe el código DDL para crear la estructura y define tipos de datos exactos. | `01_schema.sql`, Constraints (PK, FK) |
| **3. The Database Administrator** | Pérez Calderón Dulce María | Gestiona seguridad, usuarios y backups. Ensambla el entregable final. | `03_users.sql`, Backup Strategy |
| **4. The Query Master** | Amayo Torres Juan Antonio | Pobla la base de datos (datos semilla) y extrae reportes de inteligencia de negocios. | `02_seed.sql`, `queries/*.sql` |
| **5. The SQL Tester** | Leonel | Intenta romper la BD. Valida integridad referencial y tipos de datos. | `tests/bug_report.md`, `tests/test_cases.sql` |
