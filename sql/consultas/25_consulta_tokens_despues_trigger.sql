SELECT s.id_suscripcion AS 'Suscripcion',
       u.nombre AS 'Usuario',
       s.tokens_utilizados AS 'Tokens utilizados',
       p.limite_tokens AS 'Limite'
FROM suscripcion s
     JOIN usuario u
          ON s.id_usuario_beneficiario = u.id_usuario
     JOIN plan_suscripcion p
          ON s.id_plan_suscripcion = p.id_plan_suscripcion
WHERE s.id_suscripcion IN (1, 9)
