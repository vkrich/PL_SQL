select distinct e.deptno as "DEPARTMENT", e.ename as "EMPLOYEE", collea.ename as "COLLEAGUE"
from emp e, emp collea
where e.deptno=collea.deptno and e.ename<>collea.ename 
order by "DEPARTMENT"
