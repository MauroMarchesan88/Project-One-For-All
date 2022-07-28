SELECT
    a.artist_name AS artista,
    ab.album_name AS album,
    COUNT(f.id_user) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.id_artist = ab.id_artist
INNER JOIN SpotifyClone.following AS f
ON ab.id_artist = f.id_artist
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;