# 🐜 Reporte de Errores - Proyecto Mielecita

Este documento detalla los fallos encontrados durante las pruebas de estrés de la base de datos y las propuestas de mejora para la Fase 2.

| ID | Error Encontrado | Severidad | Estado | Solución Técnica Propuesta |
| :--- | :--- | :--- | :--- | :--- |
| **BUG-01** | Permite vender productos con stock 0. | **Crítica** | Pendiente | Implementar un `TRIGGER` que bloquee el `INSERT` en `sales_details` si `inventory.stock < quantity`. |
| **BUG-02** | El campo 'phone' acepta letras. | Baja | **Solucionado** | Se cambió el tipo de dato y se agregó una restricción de validación en el Front-end. |
| **BUG-03** | El total de la venta no coincide con la suma. | **Crítica** | En revisión | Crear una `VIEW` (Vista) que calcule el total dinámicamente para evitar errores de redondeo. |

## 📝 Notas del Senior DBA Mentor
Durante las pruebas, detectamos que la **Integridad Referencial** funciona perfectamente (no permite borrar categorías con productos asignados), pero la **Lógica de Negocio** (el stock) requiere más candados de seguridad.
