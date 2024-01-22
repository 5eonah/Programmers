SELECT i.animal_id, i.animal_type, i.name
FROM ANIMAL_INS i JOIN ANIMAL_OUTS o ON i.animal_id=o.animal_id
WHERE i.sex_upon_intake LIKE '%Intact%' AND
      REGEXP_LIKE(o.sex_upon_outcome, 'Spayed|Neutered')
ORDER BY animal_id