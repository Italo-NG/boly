db.ticket_soporte.find(
    {"id_dispositivo" : {$in : [1, 2]}, "estado" : {$in : ["Abierto", "En revision"]}},
    {"categoria" : 1, "estado" : 1, "fecha_creacion" : 1}
).sort({"fecha_creacion" : -1})
