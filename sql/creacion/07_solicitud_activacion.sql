CREATE TABLE solicitud_activacion (
    id_solicitud_activacion int NOT NULL PRIMARY KEY,
    id_dispositivo int NOT NULL FOREIGN KEY REFERENCES dispositivo(id_dispositivo),
    codigo varchar(50) NOT NULL UNIQUE,
    fecha_solicitud datetime NOT NULL,
    estado varchar(20) NOT NULL DEFAULT 'pendiente' CHECK (estado IN ('pendiente', 'aprobada', 'rechazada')),
    motivo varchar(255)
);
