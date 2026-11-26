CREATE TABLE suscripcion (
    id_suscripcion int NOT NULL PRIMARY KEY,
    id_usuario_beneficiario int NOT NULL FOREIGN KEY REFERENCES usuario(id_usuario),
    id_plan_suscripcion int NOT NULL FOREIGN KEY REFERENCES plan_suscripcion(id_plan_suscripcion),
    fecha_inicio date NOT NULL,
    estado varchar(20) NOT NULL DEFAULT 'activa' CHECK (estado IN ('activa', 'suspendida')),
    tokens_utilizados int NOT NULL DEFAULT 0,
    renovacion_automatica bit NOT NULL DEFAULT 0
);
