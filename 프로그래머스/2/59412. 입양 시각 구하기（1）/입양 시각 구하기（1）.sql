SELECT TO_NUMBER(TO_CHAR(datetime, 'HH24')) hour, COUNT(animal_id) count
FROM animal_outs
WHERE TO_CHAR(datetime, 'HH24') BETWEEN 9 AND 19
GROUP BY TO_CHAR(datetime, 'HH24')
ORDER BY 1