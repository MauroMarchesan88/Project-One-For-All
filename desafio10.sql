SELECT
    s.song_name AS nome,
    COUNT(h.id_song) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON s.id_song = h.id_song
LEFT JOIN SpotifyClone.user AS u
ON h.id_user = u.id_user
WHERE u.id_plan = 1 Or u.id_plan = 4
GROUP BY nome
ORDER BY reproducoes DESC, nome;