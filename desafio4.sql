SELECT 
    u.usuario AS usuario,
    IF(MAX(YEAR(datahora)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
GROUP BY u.usuario order by u.usuario;