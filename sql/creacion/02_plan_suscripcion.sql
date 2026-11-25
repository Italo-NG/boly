CREATE TABLE plan_suscripcion (
    id_plan_suscripcion int NOT NULL PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    precio decimal(10,2) NOT NULL CHECK (precio > 0),
    periodicidad varchar(20) NOT NULL CHECK (periodicidad IN ('Mensual', 'Anual')),
    limite_dispositivos int NOT NULL CHECK (limite_dispositivos > 0),
    limite_tokens int NOT NULL CHECK (limite_tokens > 0)
);
