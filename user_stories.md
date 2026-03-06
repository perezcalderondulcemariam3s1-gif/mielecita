# 🍯 Historial de Usuarios - Pastelería Mielecita

Este documento describe las funcionalidades del sistema desde la perspectiva del usuario final, siguiendo el estándar de historias de usuario para el desarrollo ágil.

---

## 📋 Tabla de Historias de Usuario

| ID | Historia de Usuario | Criterios de Aceptación |
| :--- | :--- | :--- |
| **US01** | **Acceso Principal:** Como visitante, quiero ver la portada con el nombre "Mielecita" para identificar la marca e iniciar la navegación. | - [ ] Pantalla de bienvenida con logo/nombre.<br>- [ ] Botón **"ENTRAR"** funcional que redirija al Login. |
| **US02** | **Autenticación:** Como usuario registrado, quiero una ventana de login para acceder a mi cuenta de forma segura. | - [ ] Campos para `user` y `password`.<br>- [ ] Validación de credenciales con la tabla `users` en la BD. |
| **US03** | **Panel de Cliente:** Al ingresar, quiero ver un mensaje de bienvenida personalizado para confirmar que mi acceso fue exitoso. | - [ ] Redirección exitosa tras el login.<br>- [ ] Visualización del botón/sección **"BIENVENIDO"**. |
| **US04** | **Navegación Lateral:** Como cliente, quiero un menú lateral organizado para filtrar productos por categoría rápidamente. | - [ ] Menú fijo a la izquierda (25% del ancho).<br>- [ ] Botones para: **Postres**, **Bebidas** y **Snacks**. |
| **US05** | **Catálogo Dinámico:** Como cliente, quiero que el catálogo se actualice según la categoría seleccionada sin recargar toda la página. | - [ ] Panel principal (75% del ancho) con carga dinámica.<br>- [ ] Título de sección que cambie según la categoría elegida. |
| **US06** | **Gestión de Compra:** Como cliente, quiero seleccionar un producto específico para ver sus detalles y proceder con la compra. | - [ ] Interacción al hacer clic en un producto.<br>- [ ] Botón de **"Comprar"** visible y operativo. |

---

## 🛠️ Notas Técnicas para el Desarrollo

> [!TIP]
> **Arquitectura de Base de Datos**
> - **Tabla `products`:** Debe contener una columna `category` para filtrar por (Pasteles, Bebidas, Snacks).
> - **Tabla `users`:** Se recomienda que el campo `password` esté debidamente encriptado.

> [!IMPORTANT]
> **Diseño de Interfaz (UI)**
> El layout debe respetar la proporción **1/4 (Menú)** y **3/4 (Contenido)** para mantener la consistencia visual en todas las pantallas de compra.

---
*Documento actualizado al: 2026*
