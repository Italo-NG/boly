CREATE PROCEDURE usp_VencimientosEntreFechas
@f1 date,
@f2 date
AS
SELECT u.nombre AS 'Usuario',
       u.correo AS 'Correo',
       u.correo_responsable AS 'Correo responsable',
       p.nombre AS 'Plan',
       DATEADD(MONTH, p.duracion_meses, s.fecha_inicio) AS 'Vencimiento',
       s.renovacion_automatica AS 'Renovacion automatica'
FROM suscripcion s
     JOIN usuario u
          ON s.id_usuario_beneficiario = u.id_usuario
     JOIN plan_suscripcion p
          ON s.id_plan_suscripcion = p.id_plan_suscripcion
WHERE s.estado = 'activa'
      AND DATEADD(MONTH, p.duracion_meses, s.fecha_inicio) BETWEEN @f1 AND @f2
ORDER BY DATEADD(MONTH, p.duracion_meses, s.fecha_inicio)
