select distinct e.ename, e.job, d.dname, e.sal, sg.grade
from emp e, dept d, salgrade sg
where e.deptno=d.deptno and 
e.sal between sg.losal and sg.hisal 
order by d.dname
