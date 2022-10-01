SELECT 
 MIN(plans.plan_price) AS faturamento_minimo,
 MAX(plans.plan_price) AS faturamento_maximo,
 ROUND(AVG(plans.plan_price), 2) AS faturamento_medio,
 ROUND(SUM(plans.plan_price), 2)  AS faturamento_total
FROM SpotifyClone.plans
INNER JOIN SpotifyClone.users
ON plans.plan_id = users.plan_id;