SELECT f.flavor
FROM first_half f JOIN (SELECT flavor, SUM(total_order) total_order FROM july GROUP BY flavor) j
     ON f.flavor=j.flavor
ORDER BY f.total_order+j.total_order DESC
FETCH FIRST 3 ROWS ONLY;