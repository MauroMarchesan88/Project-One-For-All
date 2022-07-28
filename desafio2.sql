SELECT *	
FROM (
    SELECT 
			s. id_song AS cancoes,
			a2.id_artist AS artistas,
			a.id_album AS albuns
		FROM SpotifyClone.songs AS s
		LEFT JOIN SpotifyClone.album AS a
		ON s.id_album=a.id_album
		LEFT JOIN SpotifyClone.artist AS a2
		ON a.id_artist=a2.id_artist
) AS result ORDER BY cancoes DESC LIMIT 1;