db.ticket_soporte.find(
    {"respuestas" : []},
    {"id_dispositivo" : 1, "categoria" : 1, "estado" : 1, "fecha_creacion" : 1}
).sort({"fecha_creacion" : 1})
