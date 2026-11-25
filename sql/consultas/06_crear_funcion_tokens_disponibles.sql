CREATE FUNCTION dbo.TokensDisponibles(@id int) RETURNS int
AS
BEGIN
    DECLARE @q int
    SELECT @q = p.limite_tokens - s.tokens_utilizados
    FROM suscripcion s
         JOIN plan_suscripcion p
              ON s.id_plan_suscripcion = p.id_plan_suscripcion
    WHERE s.id_usuario_beneficiario = @id
          AND s.estado = 'activa'
          AND DATEADD(MONTH, p.duracion_meses, s.fecha_inicio) > GETDATE()
    IF @q IS NULL
        SET @q = 0
    RETURN @q
END
