SELECT
    MIN(p.amount) AS faturamento_minimo,
    MAX(p.amount) AS faturamento_maximo,
    ROUND(AVG(p.amount),2) AS faturamento_medio,
	SUM(p.amount) AS faturamento_total
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.plan AS p
ON u.id_plan = p.id_plan
ORDER BY p.amount;