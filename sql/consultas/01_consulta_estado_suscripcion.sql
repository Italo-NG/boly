SELECT u.nombre AS 'Usuario',
       u.correo AS 'Correo',
       p.nombre AS 'Plan',
       s.fecha_inicio AS 'Inicio',
       DATEADD(MONTH, p.duracion_meses, s.fecha_inicio) AS 'Vencimiento',
       s.estado AS 'Estado'
FROM usuario u
     LEFT JOIN suscripcion s
          ON u.id_usuario = s.id_usuario_beneficiario
     LEFT JOIN plan_suscripcion p
          ON s.id_plan_suscripcion = p.id_plan_suscripcion
WHERE u.rol_sistema = 'usuario'
ORDER BY u.nombre, s.fecha_inicio
