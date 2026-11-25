db.createCollection("notificacion", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["_id", "id_suscripcion", "tipo", "canales", "fecha_envio", "leida"],
      properties: {
        _id: { bsonType: "number" },
        id_suscripcion: { bsonType: "number" },
        tipo: { enum: ["Vencimiento", "Tokens 90%", "Tokens 100%"] },
        canales: {
          bsonType: "array",
          minItems: 1,
          items: { enum: ["Panel", "Correo"] }
        },
        fecha_envio: { bsonType: "date" },
        leida: { bsonType: "bool" }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})
