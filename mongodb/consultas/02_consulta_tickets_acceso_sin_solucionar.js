db.ticket_soporte.find(
    {"categoria" : "Acceso", "estado" : {$nin : ["Resuelto", "Cerrado"]}},
    {"categoria" : 1, "estado" : 1}
)
