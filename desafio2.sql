SELECT 
    COUNT(distinct c.musica) AS cancoes,
    COUNT(distinct a.artista) AS artistas,
    COUNT(distinct al.album) AS albuns
FROM
    SpotifyClone.musicas AS c
        INNER JOIN
    SpotifyClone.albuns AS al ON c.album_id = al.album_id
        INNER JOIN
    SpotifyClone.artistas AS a ON a.artista_id = al.artista_id;