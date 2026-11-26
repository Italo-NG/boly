CREATE TABLE exclusion_privacidad (
    id_exclusion_privacidad int NOT NULL PRIMARY KEY,
    id_usuario int NOT NULL FOREIGN KEY REFERENCES usuario(id_usuario),
    tipo varchar(30) NOT NULL,
    elemento_excluido varchar(150) NOT NULL,
    fecha_registro datetime NOT NULL,
    estado varchar(20) NOT NULL CHECK (estado IN ('activa', 'inactiva'))
);
