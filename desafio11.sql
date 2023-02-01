SELECT musica AS nome_musica,
CASE 
	WHEN musica LIKE '%Bard%' THEN REPLACE(musica, 'Bard', 'QA')
    WHEN musica LIKE '%Amar%' THEN REPLACE(musica, 'Amar', 'Code Review')
    WHEN musica LIKE '%Pais' THEN REPLACE(musica, 'Pais', 'Pull Requests')
    WHEN musica LIKE '%SOUL' THEN REPLACE(musica, 'SOUL', 'CODE')
    WHEN musica LIKE '%SUPERSTAR' THEN REPLACE(musica, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.musicas
WHERE
(musica LIKE '%Bard%' OR
musica LIKE '%Amar%' OR
musica LIKE '%Pais' OR
musica LIKE '%SOUL%' OR
musica LIKE '%SUPERSTAR%')
ORDER BY musica DESC;