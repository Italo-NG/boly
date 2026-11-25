db.notificacion.find(
    {"canales" : {"$all" : ["Panel", "Correo"]}},
    {"id_suscripcion" : 1, "tipo" : 1, "canales" : 1, "_id" : 0}
)
