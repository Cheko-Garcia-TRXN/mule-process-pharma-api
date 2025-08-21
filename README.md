# Pharma Process API

## 📌 Descripción
La **Pharma Process API** es una **Process API** que actúa como el **cerebro lógico y de interconexión** de los sistemas farmacéuticos. Su función principal es centralizar la lógica de negocio, orquestar flujos complejos y asegurar la comunicación fluida entre múltiples sistemas, facilitando la trazabilidad y la eficiencia en la cadena de suministro.

Esta API es responsable de gestionar y **orquestar la lógica** de procesos clave, como la gestión de inventario, la preparación de pedidos y la certificación de remisiones, actuando como un conector entre las APIs de experiencia y los sistemas de registro.

---

## ⚙️ Operaciones

### 🔹 Orden de Creación
`POST /orders`
Permite la creación de nuevos pedidos de clientes, validando la información y orquestando la asignación inicial de inventario.

### 🔹 Consulta de Disponibilidad
`GET /products/{productId}/availability`
Consulta la disponibilidad en tiempo real de un producto específico en diferentes almacenes. Es vital para la **toma de decisiones del negocio**.

### 🔹 Asignación de Inventario
`POST /inventory/assignment`
Asigna formalmente inventario disponible a un pedido ya creado. Este paso **reserva los bienes** para su posterior preparación.

### 🔹 Salida de Almacén - Carta Porte
`POST /shipments/{shipmentId}/billoflading`
Genera la **Carta Porte** (Bill of Lading) para la salida de almacén, validando la preparación del pedido y notificando a los sistemas de transporte.

### 🔹 Certificación de Entrega
`POST /deliveries/{deliveryId}/certification`
Confirma la **entrega exitosa** de un pedido al cliente final. Actualiza sistemas de **CRM** y **facturación**.

---

## 🏢 Sistemas Integrados

Estos son los sistemas de negocio con los que la API se conecta, actuando como el **puente de comunicación**:

- **PSC (Pharmaceutical Supply Chain):** Encargado de la certificación de remisiones y es el **Sistema de Registro (SOR)** para la información de pedidos.
- **SAP:** El **ERP** principal para finanzas, inventario y facturación.
- **CRM:** Sistema de **Gestión de Relaciones con Clientes**, utilizado para el seguimiento de pedidos y la interacción con clientes.
- **WMS-BY:** Un sistema especializado en la **Gestión de Almacenes** que maneja el inventario físico.
- **DB:** Una **Base de Datos** interna utilizada para el almacenamiento temporal y la auditoría de las transacciones.

---

## 🔗 Dependencias

APIs o servicios de MuleSoft consumidos por la `process-pharma-api`:

- **system-crm-api:** Proporciona acceso a los datos de clientes y pedidos en el sistema CRM.
- **system-sap-api:** Facilita la interacción con SAP para gestionar el inventario y la facturación.
- **system-wms-by-api:** Se encarga de la gestión del inventario físico y la coordinación con el WMS.
- **system-psc-api:** Permite la comunicación con el sistema de certificación de remisiones (PSC).

---

## 👥 Consumidores

Los principales consumidores de esta API son:

- **experience-pharma-api:** Una API de experiencia que utiliza esta API para orquestar los flujos de negocio más complejos.
- **process-notifications-api:** Una API de proceso que consume esta API para recibir notificaciones sobre el estado de los pedidos y remisiones.
- **batch-process-api:** Una API de proceso que consume esta API para el procesamiento masivo de datos o la ejecución de tareas programadas.

---

## ⏱️ Procesos Programados

Actualmente no existen procesos programados.
**NA: Not Applicable.**

---

## 📖 Notas

- Esta API sigue el modelo de **API-led Connectivity de MuleSoft**.
- La documentación técnica y de endpoints se gestiona en el **Developer Portal**.
