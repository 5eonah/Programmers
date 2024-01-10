select hour(datetime) hour, count(animal_id) count
from animal_outs
group by 1
having hour between 9 and 19
order by 1