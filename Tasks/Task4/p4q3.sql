select distinct e.ename, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno and e.comm>=0
