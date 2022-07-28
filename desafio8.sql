SELECT
    a.artist_name AS artista,
    ab.album_name AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.id_artist = ab.id_artist
WHERE artist_name = 'Walter Phoenix'
ORDER BY album;