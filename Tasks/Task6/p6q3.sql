select distinct  empno, ename
from emp
where deptno = ANY (select distinct deptno from emp
                where ename like '%T%')

