# Banana Ticket
#### Te llaman por teléfono y te avisan que viene aterrizando Bob Dylan de sorpresa en tu país. Quiere dar un concierto pero no está dispuesto a usar una ticketera existente, quiere que tú construyas una ticketera para usar en el resto de su gira con sus amigos artistas. Pero solo tienes 1 hora y media hasta que llegue Bob!

Luego de preguntar, averiguas lo siguiente:

- Bob piensa administrar la ticketera personalmente, y él puede usar la consola de Rails.
- Un evento puede tener más de un artista.
- Un evento tiene un nombre.
- Cada evento tiene una fecha y hora.
- Cada evento tiene n tickets asociados, todos con el mismo precio en dólares.
- Cada ticket tiene un código alfanumérico único de 32 caracteres.
- Bob necesita un API sencilla que solo permite validar un ticket (es decir, preguntar si un código existe como ticket válido). Es un solo endpoint que recibe el código y devuelve el nombre del evento o un 404 si no existe.
- Bob puede generar n tickets usando la consola, pero Bob no sabe usar loops.
- Aunque no es de vida o muerte, a Bob le gustaría poder imprimir el ticket: debe aparecer el número correlativo, su código único, el nombre del evento, los artistas y la fecha.
- Es muy importante que los modelos/servicios tengan tests.
- A Bob le encantaría que en la vista de impresión del ticket usaras un QR para mostrar el código único.
- A Bob le encantaría que los controladores tengan tests.

NOTAS:
- Hacer cosas que no aparecen aquí, como agregar un lugar para el evento, un administrador web o actualizar el readme, probablemente no sea buena idea.
- Se evaluará calidad de código, pragmatismo, priorización de tareas, uso de git, uso de rest.
- No es necesario completar todo para ser un candidato seleccionado, solo se evaluará lo que hagas en la primera hora y media. No se evalúa esfuerzo.
