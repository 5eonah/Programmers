SELECT pt_name, pt_no, gend_cd, age, COALESCE(tlno, 'NONE') tlno
FROM patient
WHERE age <= 12 AND gend_cd = 'W'
ORDER BY 4 DESC, 1