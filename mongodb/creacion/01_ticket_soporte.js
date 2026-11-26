db.createCollection("ticket_soporte", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["_id", "id_dispositivo", "categoria", "descripcion", "fecha_creacion", "estado", "respuestas"],
      properties: {
        _id: { bsonType: "number" },
        id_dispositivo: { bsonType: "number" },
        categoria: { enum: ["Acceso", "Activacion", "Conexion", "Pago", "Otro"] },
        descripcion: { bsonType: "string" },
        mensaje_error: { bsonType: "string" },
        fecha_creacion: { bsonType: "date" },
        estado: { enum: ["Abierto", "En revision", "Resuelto", "Cerrado"] },
        respuestas: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["autor", "mensaje", "fecha"],
            properties: {
              autor: { enum: ["Usuario", "Administrador"] },
              mensaje: { bsonType: "string" },
              fecha: { bsonType: "date" }
            }
          }
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})
