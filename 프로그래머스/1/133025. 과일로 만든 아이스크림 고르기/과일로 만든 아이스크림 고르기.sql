SELECT h.flavor
FROM first_half h JOIN icecream_info i ON h.flavor=i.flavor
WHERE i.ingredient_type like '%fruit%'
GROUP BY h.flavor
HAVING SUM(h.total_order)>=3000
ORDER BY SUM(h.total_order) DESC