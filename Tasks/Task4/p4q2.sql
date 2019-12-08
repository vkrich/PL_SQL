select distinct e.job, d.loc
from emp e, dept d
where e.deptno = d.deptno and d.deptno=30
