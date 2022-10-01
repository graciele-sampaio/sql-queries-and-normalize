SELECT users.user_name AS usuario,
IF(MAX(YEAR(musics_history.music_history_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario 
FROM SpotifyClone.users 
INNER JOIN SpotifyClone.musics_history
ON users.user_id = musics_history.user_id
GROUP BY users.user_name
ORDER BY users.user_name;