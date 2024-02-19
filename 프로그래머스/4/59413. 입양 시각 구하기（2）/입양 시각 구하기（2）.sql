SELECT hour, count(o.datetime) count
FROM
(SELECT LEVEL-1 AS HOUR
 FROM DUAL
 CONNECT BY LEVEL <= 24) a LEFT JOIN animal_outs o on a.hour = to_char(o.datetime, 'HH24')
GROUP BY hour
ORDER BY hour