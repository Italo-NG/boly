CREATE TABLE sesion (
    id_sesion int NOT NULL PRIMARY KEY,
    id_acceso int NOT NULL UNIQUE FOREIGN KEY REFERENCES acceso(id_acceso),
    fecha_fin datetime,
    estado varchar(20) NOT NULL CHECK (estado IN ('activa', 'cerrada', 'revocada'))
);
