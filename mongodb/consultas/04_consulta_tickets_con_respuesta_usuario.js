db.ticket_soporte.find(
    {"respuestas.autor" : "Usuario"},
    {"categoria" : 1, "estado" : 1}
)
