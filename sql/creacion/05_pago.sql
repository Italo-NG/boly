CREATE TABLE pago (
    id_pago int NOT NULL PRIMARY KEY,
    id_suscripcion int NOT NULL FOREIGN KEY REFERENCES suscripcion(id_suscripcion),
    fecha_pago datetime NOT NULL,
    monto decimal(10,2) NOT NULL CHECK (monto > 0),
    estado varchar(20) NOT NULL CHECK (estado IN ('completado', 'pendiente', 'rechazado', 'reembolsado')),
    referencia_pago varchar(100) NOT NULL
);
