CREATE TABLE metodo_pago (
    id_metodo_pago int NOT NULL PRIMARY KEY,
    id_usuario int NOT NULL FOREIGN KEY REFERENCES usuario(id_usuario),
    tipo varchar(30) NOT NULL,
    referencia varchar(100) NOT NULL,
    fecha_vencimiento date,
    predeterminado bit NOT NULL DEFAULT 0,
    estado varchar(20) NOT NULL CHECK (estado IN ('activo', 'expirado', 'inactivo'))
);
