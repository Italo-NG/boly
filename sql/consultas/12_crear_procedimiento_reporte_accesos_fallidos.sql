CREATE PROCEDURE usp_ReporteAccesosFallidos
@minimo int
AS
BEGIN TRY
    IF @minimo <= 0
        RAISERROR('El minimo de intentos debe ser mayor a cero', 16, 1)
    SELECT u.nombre AS 'Usuario',
           u.correo AS 'Correo',
           COUNT(*) AS 'Intentos fallidos',
           MAX(a.fecha_hora) AS 'Ultimo intento'
    FROM usuario u
         JOIN dispositivo d
              ON u.id_usuario = d.id_usuario
         JOIN acceso a
              ON d.id_dispositivo = a.id_dispositivo
    WHERE a.resultado <> 'exitoso'
          AND u.id_usuario IN (SELECT id_usuario_beneficiario
                               FROM suscripcion
                               WHERE estado = 'activa')
    GROUP BY u.nombre, u.correo
    HAVING COUNT(*) >= @minimo
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE()
END CATCH
