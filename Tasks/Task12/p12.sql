create or replace view salary_vu
(employee, department, salary, grade)
as
select e.ename, d.dname, e.sal, e.job
from emp e, dept d
where e.deptno=d.deptno;
select * from salary_vu;


