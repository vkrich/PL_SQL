select empno, ename, sal, ROUND(1.15*sal) as "New Salary", (ROUND(1.15*sal) - sal) as "Increase"
from emp;
