db.notificacion.find(
    {$and : [{"tipo" : {$in : ["Tokens 90%", "Tokens 100%"]}}, {"leida" : false}]},
    {"id_suscripcion" : 1, "tipo" : 1, "fecha_envio" : 1, "_id" : 0}
).sort({"fecha_envio" : -1})
