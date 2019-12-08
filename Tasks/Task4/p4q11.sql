select distinct worker.ename as "Employee", worker.hiredate as "Emp Hiredate", 
manager.ename as "Manager", manager.hiredate as "Mgr Hiredate"
from emp worker, emp manager
where worker.mgr=manager.empno and worker.hiredate < manager.hiredate;
