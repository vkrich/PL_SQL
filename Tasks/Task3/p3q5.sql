--Monday, the Twenty-Fourth of May, 1982
select ename, hiredate,
       TO_CHAR(next_day(add_months(hiredate,6),'Monday'),'Day,"the" Ddspth "of" Month,YYYY') as "Review"
from emp;
