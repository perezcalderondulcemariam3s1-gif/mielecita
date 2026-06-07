# 🗓️ Registro de Desarrollo Expandido, Bitácora de Aprendizaje y README de Construcción - Semana 13

**Proyecto:** Sistema de Comercio Electrónico Mielecita Bakery  
**Fase del Proyecto:** Apertura del Tercer Parcial (Prototipado del Core de Negocio)  
**Objetivo Escolar:** Evidenciar el proceso iterativo, errores de lógicas y la asistencia de la IA paso a paso.

---

## 💬 Transcripción de la Plática y Proceso de Construcción Paso a Paso

### Paso 1: El Planteamiento Inicial (Lo que te pedí)
Al arrancar la Semana 13, nos comunicamos contigo porque no entendíamos cómo crear una tienda interactiva en React. Te pasamos un código base muy sencillo que solo tenía el título de la pastelería y te pedimos ayuda para meterle una lista de productos en formato JSON que simulara el inventario, junto con botones de compra para agregar artículos al carrito.

Nuestro código base original era este:
export default function App() {
  return (
    <div style={{ background: '#FFF8F0', padding: '10px' }}>
      <header><h1>🍰 Mielecita Bakery 🍰</h1></header>
    </div>
  );
}

---

### Paso 2: Escenario Esperado (Formato Gherkin)
Para asegurarnos de que la aplicación reaccionara bien, definimos las reglas de comportamiento usando el formato Gherkin:

Feature: Gestión de Visualización de Stock en el Catálogo de Clientes
  Scenario: Un cliente intenta interactuar con un pastel que no tiene existencias
    Given que el sistema carga un producto con stock igual a 0 (ejemplo: Cupcake de Vainilla)
    When el cliente visualiza la tarjeta del producto en la pantalla principal
    Then el contenedor de la tarjeta debe cambiar su fondo a un color gris de inactividad
    And el botón de acción debe mostrar el texto Agotado
    And la propiedad HTML disabled del botón debe estar en verdadero para bloquear los clics

---

### Paso 3: El Código Completo que me diste (Estructura de la Tienda)
Tú procesaste mi petición y modificaste el archivo agregándole hooks de estado (useState), un arreglo JSON local con 3 productos de prueba (dejando uno en stock 0 para calificar el error) y funciones para el carrito. El código quedó así:

import React, { useState } from 'react';

const productosIniciales = [
  { id: 1, name: "Pastel Carlos V", price: 350, stock: 5, category: "Pasteles" },
  { id: 2, name: "Cupcake de Vainilla", price: 35, stock: 0, category: "Cupcakes" },
  { id: 3, name: "Cheesecake de Fresa", price: 280, stock: 3, category: "Pasteles" }
];

export default function MielecitaShopV1() {
  const [productos, setProductos] = useState(productosIniciales);
  const [carrito, setCarrito] = useState([]);

  const agregarAlCarrito = (producto) => {
    setCarrito([...carrito, producto]);
    alert(producto.name + " se añadió al carrito de compras.");
  };

  return (
    <div style={{ background: '#FFF8F0', padding: '20px', fontFamily: 'sans-serif' }}>
      <header style={{ textAlign: 'center', marginBottom: '30px' }}>
        <h1>🍰 Mielecita Bakery 🍰</h1>
        <p>Entorno de Pruebas Iterativas - Semana 13</p>
      </header>

      <div style={{ display: 'flex', gap: '20px', justifyContent: 'center' }}>
        {productos.map(prod => (
          <div key={prod.id} style={{
            border: '1px solid #E6CCB2',
            padding: '20px',
            borderRadius: '12px',
            background: prod.stock === 0 ? '#EFEFEF' : '#FFFFFF',
            boxShadow: '0 4px 6px rgba(0,0,0,0.05)',
            width: '200px'
          }}>
            <h3>{prod.name}</h3>
            <p>Precio: ${prod.price}</p>
            <p style={{ color: prod.stock === 0 ? 'red' : 'green' }}>
              Disponibles: {prod.stock}
            </p>
            
            <button 
              disabled={prod.stock === 0} 
              onClick={() => agregarAlCarrito(prod)}
              style={{
                width: '100%',
                padding: '10px',
                background: prod.stock === 0 ? '#999' : '#DDB892',
                color: '#fff',
                border: 'none',
                borderRadius: '6px',
                cursor: prod.stock === 0 ? 'not-allowed' : 'pointer'
              }}
            >
              {prod.stock === 0 ? 'Agotado' : 'Comprar'}
            </button>
          </div>
        ))}
      </div>

      <footer style={{ marginTop: '40px', padding: '20px', background: '#DDB892', borderRadius: '8px' }}>
        <h3>🛒 Carrito de Compras Temporal (Artículos: {carrito.length})</h3>
        <ul>
          {carrito.map((item, index) => (
            <li key={index}>{item.name} - ${item.price}</li>
          ))}
        </ul>
      </footer>
    </div>
  );
}

---

### Paso 4: README - Explicación de cómo lo construimos paso a paso
Para entender la lógica, desglosamos el código en 5 pasos sencillos:
1. Importación de useState: Activamos la memoria de React para que la página recuerde lo que hace el usuario.
2. Formato de Datos JSON: Diseñamos el arreglo de objetos para simular las propiedades de los pasteles (id, nombre, precio, stock).
3. El Operador Spread (...): Usamos los tres puntos para meter cosas al carrito sin borrar los pasteles que el cliente ya había seleccionado antes.
4. Ciclo Map: Usamos productos.map para que React dibuje automáticamente las tarjetas en pantalla sin duplicar código HTML.
5. Estilos Condicionales: Usamos un validador (prod.stock === 0) para pintar de gris la tarjeta si no hay pasteles y activar el bloqueo (disabled).

---

## 📈 Reporte de Evaluación: ¿Funcionó o No funcionó?

### 🟢 Lo que SÍ funcionó con éxito:
Al probar el programa en el navegador, las tarjetas se crearon de forma dinámica perfectamente. El Cupcake de Vainilla apareció con fondo gris, el botón decía "Agotado" y no dejaba darle clic. Los productos con existencias sumaban correctamente al contador del carrito al presionarlos.

### 🔴 Lo que NO funcionó (Errores detectados):
Detectamos dos fallas graves usando lógica Gherkin para documentar los fallos:

Feature: Auditoría de Errores Locales de la Tienda
  Scenario: El usuario refresca la página
    Given que el cliente tiene 3 pasteles guardados en su carrito temporal
    When el usuario presiona la tecla F5 o recarga el sitio
    Then el carrito se borra por completo y vuelve a 0 porque los datos no están guardados en una base de datos real

  Scenario: Compra fraudulenta por clics rápidos
    Given que nos queda solo 1 Pastel Carlos V en el inventario local
    When un usuario le da clics muy rápido al botón de comprar (Spam / Double-Click)
    Then el sistema mete el mismo pastel 3 o 4 veces al carrito antes de que el botón se logre bloquear, causando una sobreventa

---

## 🔍 Preguntas planteadas para corregir en la Semana 14
Para solucionar lo que no funcionó, acordamos investigar lo siguiente para la próxima semana:
1. ¿Cómo conectar este JSON local con tablas reales en Supabase para que los datos no se borren al dar F5?
2. ¿Cómo crear una ruta privada en el navegador para que Dulce o Wendy inicien sesión y modifiquen el stock?
3. ¿Cómo usar Tailwind CSS en vez de estilos tradicionales para mejorar la interfaz visual?
