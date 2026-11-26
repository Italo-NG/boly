CREATE PROCEDURE usp_SolicitarActivacion
@id_dispositivo int,
@codigo varchar(50)
AS
DECLARE @usuario int, @estado_dispositivo varchar(20), @limite int, @activos int, @id int
SELECT @usuario = id_usuario,
       @estado_dispositivo = estado
FROM dispositivo
WHERE id_dispositivo = @id_dispositivo
SELECT @limite = p.limite_dispositivos
FROM suscripcion s
     JOIN plan_suscripcion p
          ON s.id_plan_suscripcion = p.id_plan_suscripcion
WHERE s.id_usuario_beneficiario = @usuario
      AND s.estado = 'activa'
      AND DATEADD(MONTH, p.duracion_meses, s.fecha_inicio) > GETDATE()
SELECT @activos = COUNT(*)
FROM dispositivo
WHERE id_usuario = @usuario
      AND estado = 'activo'
SELECT @id = MAX(id_solicitud_activacion) + 1
FROM solicitud_activacion
BEGIN TRY
    BEGIN TRAN tsolicitud
    IF @limite IS NULL
        INSERT INTO solicitud_activacion
        VALUES (@id, @id_dispositivo, @codigo, GETDATE(), 'rechazada',
                'La suscripcion no esta activa')
    ELSE IF @estado_dispositivo = 'activo'
        INSERT INTO solicitud_activacion
        VALUES (@id, @id_dispositivo, @codigo, GETDATE(), 'rechazada',
                'El dispositivo ya esta activo')
    ELSE IF @activos >= @limite
        INSERT INTO solicitud_activacion
        VALUES (@id, @id_dispositivo, @codigo, GETDATE(), 'rechazada',
                'No hay cupos disponibles en el plan')
    ELSE
    BEGIN
        INSERT INTO solicitud_activacion
        VALUES (@id, @id_dispositivo, @codigo, GETDATE(), 'aprobada', NULL)
        UPDATE dispositivo
        SET estado = 'activo'
        WHERE id_dispositivo = @id_dispositivo
    END
    COMMIT TRAN tsolicitud
    PRINT 'Solicitud ' + @codigo + ' registrada'
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN tsolicitud
    PRINT ERROR_MESSAGE()
END CATCH
