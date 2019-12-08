select d.dname, d.loc, COUNT(e.ename)/2 as "Number of people", ROUND(avg(e.sal),2)
from emp e, dept d
where e.deptno=d.deptno
group by d.dname, d.loc
order by ROUND(avg(e.sal),2) desc
