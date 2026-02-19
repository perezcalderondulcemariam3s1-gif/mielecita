##Diagrama E-R
\\\mermaid
<Table usuarios {
  id_usuario int [pk]
  nombre varchar
  correo varchar
  contraseña varchar
  rol varchar
}

Table clientes {
  id_cliente int [pk]
  id_usuario int
  telefono varchar
  direccion varchar
}

Table empleados {
  id_empleado int [pk]
  id_usuario int
  puesto varchar
}

Table categorias {
  id_categoria int [pk]
  nombre varchar
}

Table productos {
  id_producto int [pk]
  nombre varchar
  precio decimal
  id_categoria int
}

Table inventario {
  id_inventario int [pk]
  id_producto int
  stock int
}

Table proveedores {
  id_proveedor int [pk]
  nombre varchar
  telefono varchar
}

Table compras_insumos {
  id_compra int [pk]
  id_proveedor int
  fecha date
  total decimal
}

Table ventas {
  id_venta int [pk]
  id_cliente int
  id_empleado int
  fecha datetime
  total decimal
}

Table detalle_venta {
  id_detalle int [pk]
  id_venta int
  id_producto int
  cantidad int
}

Table pedidos {
  id_pedido int [pk]
  id_cliente int
  fecha date
  estado varchar
}
>

Ref: clientes.id_usuario > usuarios.id_usuario
Ref: empleados.id_usuario > usuarios.id_usuario
Ref: productos.id_categoria > categorias.id_categoria
Ref: inventario.id_producto > productos.id_producto
Ref: compras_insumos.id_proveedor > proveedores.id_proveedor
Ref: ventas.id_cliente > clientes.id_cliente
Ref: ventas.id_empleado > empleados.id_empleado
Ref: detalle_venta.id_venta > ventas.id_venta
Ref: detalle_venta.id_producto > productos.id_producto
Ref: pedidos.id_cliente > clientes.id_cliente
\\\
