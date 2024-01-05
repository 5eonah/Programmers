SELECT name
FROM animal_ins
WHERE datetime IN (SELECT MIN(datetime) FROM animal_ins)