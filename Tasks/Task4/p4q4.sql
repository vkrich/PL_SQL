select distinct e.ename, d.dname
from emp e, dept d
where e.ename like '%A%' and e.deptno=d.deptno
