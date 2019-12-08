select distinct ename, ROUND(MONTHS_BETWEEN (SYSDATE, hiredate)) as "MONTHS_WORKED"
from emp
order by MONTHS_WORKED
