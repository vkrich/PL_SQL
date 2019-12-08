select distinct ename, hiredate 
from emp
where deptno = (select distinct deptno from emp
                where ename='BLAKE')
and ename not like 'BLAKE'
