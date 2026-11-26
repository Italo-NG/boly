SELECT s.codigo AS 'Codigo',
       d.nombre AS 'Dispositivo',
       s.estado AS 'Solicitud',
       s.motivo AS 'Motivo',
       d.estado AS 'Estado del dispositivo'
FROM solicitud_activacion s
     JOIN dispositivo d
          ON s.id_dispositivo = d.id_dispositivo
WHERE s.id_solicitud_activacion >= 9
