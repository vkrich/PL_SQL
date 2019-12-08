select distinct ename, LPAD(' ',sal/100,'*') as "Salaryline"
from emp
order by "Salaryline" desc
