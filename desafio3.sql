SELECT
	u.user_name AS usuario,
	COUNT(s.id_song) AS qtde_musicas_ouvidas,
    ROUND(SUM(s.duration) /60, 2) AS total_minutos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h
ON u.id_user = h.id_user
INNER JOIN SpotifyClone.songs AS s
ON h.id_song = s.id_song
GROUP BY usuario ORDER BY usuario;
