select distinct ename, sal, comm from emp where comm is not null 
and comm>sal+sal/10
order by sal desc
