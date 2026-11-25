CREATE TABLE dispositivo (
    id_dispositivo int NOT NULL PRIMARY KEY,
    id_usuario int NOT NULL FOREIGN KEY REFERENCES usuario(id_usuario),
    nombre varchar(100) NOT NULL,
    sistema_operativo varchar(50) NOT NULL,
    identificador varchar(150) NOT NULL UNIQUE,
    fecha_activacion datetime,
    estado varchar(20) NOT NULL DEFAULT 'inactivo' CHECK (estado IN ('activo', 'inactivo', 'bloqueado'))
);
