SELECT
	s.song_name AS cancao,
    COUNT(s.id_song) AS reproducoes
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h
ON u.id_user = h.id_user
INNER JOIN SpotifyClone.songs AS s
ON h.id_song = s.id_song
GROUP BY song_name ORDER BY reproducoes DESC, song_name LIMIT 2;