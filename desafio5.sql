SELECT songs.song_name AS cancao,
	COUNT(musics_history.song_id) AS reproducoes
    FROM SpotifyClone.songs 
    INNER JOIN SpotifyClone.musics_history
    ON songs.song_id = musics_history.song_id
    GROUP BY songs.song_name
    ORDER BY reproducoes DESC, cancao 
    LIMIT 2;