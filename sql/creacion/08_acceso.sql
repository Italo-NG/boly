CREATE TABLE acceso (
    id_acceso int NOT NULL PRIMARY KEY,
    id_dispositivo int NOT NULL FOREIGN KEY REFERENCES dispositivo(id_dispositivo),
    fecha_hora datetime NOT NULL,
    resultado varchar(20) NOT NULL CHECK (resultado IN ('exitoso', 'clave incorrecta', 'bloqueado')),
    ubicacion_aproximada varchar(150),
    direccion_ip varchar(50)
);
