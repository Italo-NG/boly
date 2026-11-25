CREATE FUNCTION dbo.HistorialAccesos(@id int) RETURNS TABLE
AS
RETURN (SELECT a.fecha_hora AS 'Fecha y hora',
               d.nombre AS 'Dispositivo',
               a.resultado AS 'Resultado',
               a.ubicacion_aproximada AS 'Ubicacion',
               a.direccion_ip AS 'IP'
        FROM acceso a
             JOIN dispositivo d
                  ON a.id_dispositivo = d.id_dispositivo
        WHERE d.id_usuario = @id)
