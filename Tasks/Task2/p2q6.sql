select distinct ename as "Employee", sal as "Monthly Salary"  from emp 
where sal>1500 and deptno=10 
or sal>1500 and deptno=30 
order by sal desc
