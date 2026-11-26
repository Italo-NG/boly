db.ticket_soporte.insertMany([
    {
        "_id": 1,
        "id_dispositivo": 1,
        "categoria": "Acceso",
        "descripcion": "No puedo iniciar sesión en el asistente desde mi laptop.",
        "mensaje_error": "Error 401: credenciales no válidas",
        "fecha_creacion": ISODate("2026-11-02T09:15:00Z"),
        "estado": "Resuelto",
        "respuestas": [
            {
                "autor": "Administrador",
                "mensaje": "Se envió un enlace para restablecer la contraseña.",
                "fecha": ISODate("2026-11-02T11:00:00Z")
            },
            {
                "autor": "Usuario",
                "mensaje": "Ya pude ingresar, gracias.",
                "fecha": ISODate("2026-11-02T15:30:00Z")
            }
        ]
    },
    {
        "_id": 2,
        "id_dispositivo": 3,
        "categoria": "Activacion",
        "descripcion": "Cambié de laptop y la solicitud de activación fue rechazada.",
        "mensaje_error": "Solicitud rechazada: limite de dispositivos alcanzado",
        "fecha_creacion": ISODate("2026-11-04T08:20:00Z"),
        "estado": "En revision",
        "respuestas": [
            {
                "autor": "Administrador",
                "mensaje": "Debe desactivar el equipo anterior desde la sección Dispositivos.",
                "fecha": ISODate("2026-11-04T10:05:00Z")
            }
        ]
    },
    {
        "_id": 3,
        "id_dispositivo": 5,
        "categoria": "Acceso",
        "descripcion": "Se cerró mi sesión cuando mi hermano usó la computadora.",
        "fecha_creacion": ISODate("2026-11-05T17:45:00Z"),
        "estado": "Abierto",
        "respuestas": []
    },
    {
        "_id": 4,
        "id_dispositivo": 6,
        "categoria": "Conexion",
        "descripcion": "El asistente se desconecta mientras comparto la pantalla.",
        "mensaje_error": "Conexion perdida con el servidor",
        "fecha_creacion": ISODate("2026-11-06T19:10:00Z"),
        "estado": "Cerrado",
        "respuestas": [
            {
                "autor": "Administrador",
                "mensaje": "Se recomienda actualizar el asistente a la última versión.",
                "fecha": ISODate("2026-11-07T08:30:00Z")
            },
            {
                "autor": "Usuario",
                "mensaje": "Actualicé y ya no se desconecta.",
                "fecha": ISODate("2026-11-07T20:15:00Z")
            },
            {
                "autor": "Administrador",
                "mensaje": "Se cierra el ticket por solución confirmada.",
                "fecha": ISODate("2026-11-08T09:00:00Z")
            }
        ]
    },
    {
        "_id": 5,
        "id_dispositivo": 7,
        "categoria": "Pago",
        "descripcion": "Se realizó el cobro de la renovación, pero no se refleja en mi suscripción.",
        "fecha_creacion": ISODate("2026-11-09T12:00:00Z"),
        "estado": "En revision",
        "respuestas": []
    },
    {
        "_id": 6,
        "id_dispositivo": 2,
        "categoria": "Activacion",
        "descripcion": "Quiero activar el asistente en una computadora de la universidad.",
        "fecha_creacion": ISODate("2026-11-10T10:30:00Z"),
        "estado": "Abierto",
        "respuestas": []
    },
    {
        "_id": 7,
        "id_dispositivo": 8,
        "categoria": "Otro",
        "descripcion": "El borde de captura no aparece cuando el asistente está activo.",
        "fecha_creacion": ISODate("2026-11-12T14:50:00Z"),
        "estado": "Resuelto",
        "respuestas": [
            {
                "autor": "Administrador",
                "mensaje": "Se corrigió en la versión 1.2 del asistente.",
                "fecha": ISODate("2026-11-13T09:10:00Z")
            }
        ]
    },
    {
        "_id": 8,
        "id_dispositivo": 4,
        "categoria": "Acceso",
        "descripcion": "Recibí un aviso de inicio de sesión desde un equipo que no reconozco.",
        "mensaje_error": "Acceso desde nueva ubicacion detectado",
        "fecha_creacion": ISODate("2026-11-15T07:40:00Z"),
        "estado": "Abierto",
        "respuestas": []
    }
])
