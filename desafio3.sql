SELECT 
  users.user_name AS "usuario",
	COUNT(musics_history.user_id) AS "qt_de_musicas_ouvidas",
  ROUND(SUM(songs.song_duration) / 60, 2) AS "total_minutos"
FROM SpotifyClone.users 
INNER JOIN SpotifyClone.musics_history
ON users.user_id = musics_history.user_id
INNER JOIN SpotifyClone.songs
ON musics_history.song_id = songs.song_id
GROUP BY users.user_name
ORDER BY users.user_name;