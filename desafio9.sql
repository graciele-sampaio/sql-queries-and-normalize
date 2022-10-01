SELECT 
  COUNT(musics_history.user_id) AS "quantidade_musicas_no_historico"
FROM SpotifyClone.users 
INNER JOIN SpotifyClone.musics_history
ON users.user_id = musics_history.user_id
WHERE users.user_name = 'Barbara Liskov';