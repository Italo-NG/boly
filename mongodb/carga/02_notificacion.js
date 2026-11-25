db.notificacion.insertMany([
    {
        "_id": 1,
        "id_suscripcion": 4,
        "tipo": "Vencimiento",
        "canales": ["Panel", "Correo"],
        "fecha_envio": ISODate("2026-11-04T19:42:00Z"),
        "leida": false
    },
    {
        "_id": 2,
        "id_suscripcion": 1,
        "tipo": "Tokens 90%",
        "canales": ["Panel", "Correo"],
        "fecha_envio": ISODate("2026-11-05T21:30:00Z"),
        "leida": true
    },
    {
        "_id": 3,
        "id_suscripcion": 2,
        "tipo": "Vencimiento",
        "canales": ["Correo"],
        "fecha_envio": ISODate("2026-11-07T10:15:00Z"),
        "leida": true
    },
    {
        "_id": 4,
        "id_suscripcion": 1,
        "tipo": "Tokens 100%",
        "canales": ["Panel"],
        "fecha_envio": ISODate("2026-11-08T18:10:00Z"),
        "leida": false
    },
    {
        "_id": 5,
        "id_suscripcion": 6,
        "tipo": "Tokens 90%",
        "canales": ["Panel"],
        "fecha_envio": ISODate("2026-11-09T13:25:00Z"),
        "leida": false
    },
    {
        "_id": 6,
        "id_suscripcion": 7,
        "tipo": "Vencimiento",
        "canales": ["Panel", "Correo"],
        "fecha_envio": ISODate("2026-11-13T07:28:00Z"),
        "leida": false
    },
    {
        "_id": 7,
        "id_suscripcion": 5,
        "tipo": "Tokens 90%",
        "canales": ["Panel", "Correo"],
        "fecha_envio": ISODate("2026-11-14T16:45:00Z"),
        "leida": false
    },
    {
        "_id": 8,
        "id_suscripcion": 8,
        "tipo": "Vencimiento",
        "canales": ["Correo"],
        "fecha_envio": ISODate("2026-11-20T21:05:00Z"),
        "leida": true
    }
])
