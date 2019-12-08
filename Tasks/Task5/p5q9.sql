select distinct mgr, min(sal)
from emp
group by mgr
having mgr is not null and min(sal)>1000
order by min(sal) desc


