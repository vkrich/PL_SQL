select distinct  empno, ename, sal
from emp
where deptno = ANY (select distinct deptno from emp
                where ename like '%T%')
and sal > (select distinct avg(sal) from emp)

