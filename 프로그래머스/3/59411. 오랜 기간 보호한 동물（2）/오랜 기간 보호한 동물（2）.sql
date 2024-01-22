SELECT i.animal_id, i.name
FROM ANIMAL_INS i JOIN ANIMAL_OUTS o ON i.animal_id=o.animal_id
ORDER BY o.datetime-i.datetime DESC
FETCH FIRST 2 ROWS ONLY;