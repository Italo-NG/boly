SELECT nombre AS 'Usuario',
       dbo.TokensDisponibles(id_usuario) AS 'Tokens disponibles'
FROM usuario
WHERE rol_sistema = 'usuario'
