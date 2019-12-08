select distinct ename, job, sal
from emp
where sal >ANY (select distinct sal from emp
                 where job like 'CLERK')
and job <> 'CLERK'
and sal>=1500
order by sal desc                 

                 
