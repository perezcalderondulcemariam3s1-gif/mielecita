USUARIOS
 ├── id_usuario (PK)
 ├── nombre
 ├── correo
 ├── contraseña
 └── rol
      │
      ├──────────────┐
      │              │
CLIENTES        EMPLEADOS
(PK id_cliente) (PK id_empleado)
FK id_usuario   FK id_usuario

CATEGORIAS
 PK id_categoria
      │
      │
PRODUCTOS
 PK id_producto
 FK id_categoria
      │
      │
INVENTARIO
 PK id_inventario
 FK id_producto

PROVEEDORES
 PK id_proveedor
      │
      │
COMPRAS_INSUMOS
 PK id_compra
 FK id_proveedor

CLIENTES ────────┐
                 │
              VENTAS
              PK id_venta
              FK id_cliente
              FK id_empleado
                    │
                    │
              DETALLE_VENTA
              PK id_detalle
              FK id_venta
              FK id_producto

CLIENTES
   │
   │
PEDIDOS
PK id_pedido
FK id_cliente
