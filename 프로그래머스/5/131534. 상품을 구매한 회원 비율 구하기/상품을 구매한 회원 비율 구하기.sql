SELECT YEAR(o.sales_date) year, MONTH(o.sales_date) month, 
       COUNT(DISTINCT o.user_id) puchased_users,
       ROUND(COUNT(DISTINCT o.user_id)/(SELECT COUNT(user_id) FROM user_info 
                               WHERE YEAR(joined)=2021),1) puchased_ratio
FROM user_info i LEFT JOIN online_sale o ON i.user_id=o.user_id
WHERE YEAR(i.joined)=2021
GROUP BY 1, 2
HAVING year IS NOT NULL
ORDER BY 1, 2