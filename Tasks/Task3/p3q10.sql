select ename, hiredate, to_char(hiredate, 'DAY') as "Day"
from emp
order by mod(to_char(hiredate, 'D')+5,7) 
