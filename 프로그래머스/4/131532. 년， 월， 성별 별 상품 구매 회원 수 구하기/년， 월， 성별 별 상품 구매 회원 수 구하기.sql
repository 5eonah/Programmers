SELECT YEAR(o.sales_date) YEAR, MONTH(o.sales_date) MONTH, u.gender,
       COUNT(DISTINCT o.user_id) USERS
FROM user_info u JOIN online_sale o ON u.user_id=o.user_id
WHERE u.gender IS NOT NULL
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3