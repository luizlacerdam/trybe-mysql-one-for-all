SELECT 
    a.artista AS artista,
    al.album AS album,
    COUNT(s.seguidor_id) AS seguidores
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.seguidores AS s ON s.artista_id = a.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC , artista , album
;