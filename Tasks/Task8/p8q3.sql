prompt 'Enter Min number:'
ACCEPT hiredatmin number prompt 'Enter Min hiredate:'
select ename || ', ' || job as EMPLIYEES, hiredate
from emp
where deptno>&hiredamin 
/
