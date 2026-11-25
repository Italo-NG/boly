CREATE TABLE usuario (
    id_usuario int NOT NULL PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    correo varchar(150) NOT NULL UNIQUE,
    correo_responsable varchar(150),
    contrasena varchar(255) NOT NULL,
    rol_sistema varchar(20) NOT NULL CHECK (rol_sistema IN ('usuario', 'administrador')),
    estado varchar(20) NOT NULL CHECK (estado IN ('habilitado', 'restringido'))
);
