db.notificacion.find(
    {"tipo" : "Vencimiento"},
    {"id_suscripcion" : 1, "fecha_envio" : 1, "_id" : 0}
).sort({"fecha_envio" : -1}).limit(3)
