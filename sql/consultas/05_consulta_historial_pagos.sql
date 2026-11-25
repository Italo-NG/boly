SELECT pg.fecha_pago AS 'Fecha',
       pl.nombre AS 'Plan',
       pg.monto AS 'Monto',
       pg.estado AS 'Estado',
       pg.referencia_pago AS 'Comprobante'
FROM pago pg
     JOIN suscripcion s
          ON pg.id_suscripcion = s.id_suscripcion
     JOIN plan_suscripcion pl
          ON s.id_plan_suscripcion = pl.id_plan_suscripcion
WHERE s.id_usuario_beneficiario = 2
ORDER BY pg.fecha_pago DESC
