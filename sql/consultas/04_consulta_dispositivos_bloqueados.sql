SELECT u.nombre AS 'Usuario',
       d.nombre AS 'Dispositivo',
       d.sistema_operativo AS 'Sistema operativo',
       d.estado AS 'Estado'
FROM dispositivo d
     JOIN usuario u
          ON d.id_usuario = u.id_usuario
WHERE EXISTS (SELECT *
              FROM acceso a
              WHERE a.id_dispositivo = d.id_dispositivo
                    AND a.resultado = 'bloqueado')
