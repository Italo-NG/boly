SELECT u.nombre AS 'Usuario',
       d.nombre AS 'Dispositivo',
       d.sistema_operativo AS 'Sistema operativo',
       d.fecha_activacion AS 'Activacion',
       MAX(a.fecha_hora) AS 'Ultimo ingreso',
       d.estado AS 'Estado'
FROM usuario u
     JOIN dispositivo d
          ON u.id_usuario = d.id_usuario
     JOIN acceso a
          ON d.id_dispositivo = a.id_dispositivo
WHERE a.resultado = 'exitoso'
GROUP BY u.nombre, d.nombre, d.sistema_operativo, d.fecha_activacion, d.estado
ORDER BY u.nombre
