select distinct job, MAX(sal) as "Maximum", MIN(sal) as "Minimum", SUM(sal) as "Sum", ROUND(AVG(sal)) as "Average"
from emp
group by job
order by job
 
