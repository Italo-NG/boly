CREATE TRIGGER TX_SUSCRIPCION_TOKENS ON suscripcion
FOR UPDATE
AS
IF EXISTS (SELECT *
           FROM inserted i
                JOIN plan_suscripcion p
                     ON i.id_plan_suscripcion = p.id_plan_suscripcion
           WHERE i.tokens_utilizados > p.limite_tokens)
BEGIN
    PRINT 'Se alcanzo el limite de tokens del plan, no se registra el consumo'
    ROLLBACK TRANSACTION
END
