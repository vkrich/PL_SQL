select distinct ename, job, sal from emp where job='CLERK' OR job='ANALYST' 
and sal<>1000 and sal<>3000 and sal<>5000
