SELECT
    COUNT(h.id_song) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u
ON h.id_user = u.id_user
WHERE user_name = 'Bill';