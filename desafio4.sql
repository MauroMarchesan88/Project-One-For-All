SELECT
	u.user_name AS usuario,
	IF(SUM(IF(YEAR(h.lastplayed) = 2021,
        1, 0)) > 0,
        'Usuário ativo',
        'Usuário inativo'        
	) AS condicao_usuario
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h
ON h.id_user = u.id_user
GROUP BY usuario ORDER BY usuario;

-- https://stackoverflow.com/questions/25800411/mysql-isnt-in-group-by // resposta do Jordan parker me ajudou a entender que aggregated significa adicionar de alguma forma, COUNT ou SUM
