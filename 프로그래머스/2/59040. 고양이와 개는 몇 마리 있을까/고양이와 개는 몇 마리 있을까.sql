SELECT animal_type, COUNT(animal_id) count
FROM ANIMAL_INS
WHERE animal_type IN ('Dog', 'Cat')
GROUP BY animal_type
ORDER BY 1