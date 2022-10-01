SELECT 
	artists.artist_name AS artista,
	albums.album_name AS album,
	COUNT(following_artists.user_id) AS seguidores
FROM SpotifyClone.artists
INNER JOIN SpotifyClone.albums 
ON albums.artist_id = artists.artist_id
INNER JOIN SpotifyClone.following_artists
ON following_artists.artist_id = artists.artist_id
GROUP BY albums.album_id
ORDER BY seguidores DESC, artista, album;