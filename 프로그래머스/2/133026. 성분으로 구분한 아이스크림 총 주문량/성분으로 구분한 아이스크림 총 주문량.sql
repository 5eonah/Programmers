SELECT i.ingredient_type, SUM(h.total_order) total_order
FROM FIRST_HALF h JOIN ICECREAM_INFO i ON h.flavor=i.flavor
GROUP BY i.ingredient_type
ORDER BY total_order