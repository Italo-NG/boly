SELECT u.nombre AS 'Usuario',
       d.nombre AS 'Dispositivo',
       d.sistema_operativo AS 'Sistema operativo',
       MAX(sa.fecha_solicitud) AS 'Activacion',
       MAX(a.fecha_hora) AS 'Ultimo ingreso',
       d.estado AS 'Estado'
FROM usuario u
     JOIN dispositivo d
          ON u.id_usuario = d.id_usuario
     JOIN acceso a
          ON d.id_dispositivo = a.id_dispositivo
     JOIN solicitud_activacion sa
          ON d.id_dispositivo = sa.id_dispositivo
WHERE a.resultado = 'exitoso'
      AND sa.estado = 'aprobada'
GROUP BY u.nombre, d.nombre, d.sistema_operativo, d.estado
ORDER BY u.nombre
