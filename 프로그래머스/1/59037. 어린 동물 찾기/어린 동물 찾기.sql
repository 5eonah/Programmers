SELECT animal_id, name
FROM animal_ins
WHERE intake_condition NOT IN ('Aged')
ORDER BY 1