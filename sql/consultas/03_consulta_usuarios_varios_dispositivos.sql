SELECT u.nombre AS 'Usuario',
       COUNT(*) AS 'Dispositivos activos'
FROM usuario u
     JOIN dispositivo d
          ON u.id_usuario = d.id_usuario
WHERE d.estado = 'activo'
GROUP BY u.nombre
HAVING COUNT(*) >= 2
