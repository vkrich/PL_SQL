select distinct e.ename, e.job, d.deptno, d.dname
from emp e, dept d
where d.loc like 'DALLAS' and e.deptno=d.deptno
