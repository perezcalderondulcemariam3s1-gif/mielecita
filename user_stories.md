# Historial de Usuarios - Pastelería Mielecita

Este documento describe las funcionalidades del sitio web desde la perspectiva del usuario.

##  Historias de Usuario

| ID | Historia de Usuario | Criterios de Aceptación |
|:---|:---|:---|
| **US01** | **Acceso Principal:** Como visitante, quiero ver la portada con el nombre "Mielecita" y el botón "Entrar" para iniciar la navegación. | - Pantalla con fondo de marca.<br>- Botón "ENTRAR" funcional. |
| **US02** | **Registro/Login:** Como usuario, quiero una ventana de acceso para ingresar mi usuario y contraseña o registrarme. | - Campos para `user` y `password`.<br>- Conexión con tabla `users` en la BD. |
| **US03** | **Panel de Cliente:** Al ingresar, quiero ver un botón de "BIENVENIDO" para acceder al área de compras. | - Redirección exitosa tras el login. |
| **US04** | **Navegación (Menú Lateral):** Como cliente, quiero un menú lateral (1/4 de pantalla) con botones de Postres, Bebidas y Snacks. | - Menú fijo a la izquierda.<br>- Tres botones claramente identificados. |
| **US05** | **Catálogo (Panel Principal):** Como cliente, quiero que el panel derecho (3/4 de pantalla) cambie según el botón presionado en el menú. | - Carga dinámica de productos.<br>- Título de "Menú Normal" o Categoría. |
| **US06** | **Selección de Producto:** Como cliente, quiero que al presionar un pastel se me dé la opción de comprar. | - Modal o página de detalles.<br>- Botón de "Comprar" visible. |

##  Notas Técnicas para el DBA
- La tabla `products` debe incluir una columna `category` (Pasteles, Bebidas, Snacks).
- La tabla `users` debe validar las credenciales del formulario de login.
