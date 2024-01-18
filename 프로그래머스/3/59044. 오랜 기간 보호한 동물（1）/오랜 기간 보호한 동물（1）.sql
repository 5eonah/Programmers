select i.name, i.datetime
from animal_ins i left join animal_outs o on i.animal_id=o.animal_id
where o.datetime is null
ORDER BY i.datetime
LIMIT 3