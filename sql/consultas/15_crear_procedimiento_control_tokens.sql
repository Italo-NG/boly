CREATE PROCEDURE usp_ControlTokens
AS
BEGIN TRY
    DECLARE @usuario varchar(100), @plan varchar(100), @usados int, @limite int, @porcentaje int
    DECLARE csuscripcion CURSOR FOR
    SELECT u.nombre, p.nombre, s.tokens_utilizados, p.limite_tokens
    FROM suscripcion s
         JOIN usuario u
              ON s.id_usuario_beneficiario = u.id_usuario
         JOIN plan_suscripcion p
              ON s.id_plan_suscripcion = p.id_plan_suscripcion
    WHERE s.estado = 'activa'
    OPEN csuscripcion
    FETCH csuscripcion INTO @usuario, @plan, @usados, @limite
    WHILE (@@FETCH_STATUS = 0)
    BEGIN
        SET @porcentaje = @usados * 100 / @limite
        IF @porcentaje >= 100
            PRINT @usuario + ' - ' + @plan + ' - ' + Str(@porcentaje, 3) + '% - Limite alcanzado'
        ELSE IF @porcentaje >= 90
            PRINT @usuario + ' - ' + @plan + ' - ' + Str(@porcentaje, 3) + '% - Aviso de limite'
        ELSE
            PRINT @usuario + ' - ' + @plan + ' - ' + Str(@porcentaje, 3) + '% - Uso normal'
        FETCH csuscripcion INTO @usuario, @plan, @usados, @limite
    END
    CLOSE csuscripcion
    DEALLOCATE csuscripcion
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE()
END CATCH
