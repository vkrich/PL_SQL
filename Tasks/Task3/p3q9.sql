select INITCAP(ename), length(ename)
from emp
where ename like 'J%' or ename like 'A%' or ename like 'M%'
