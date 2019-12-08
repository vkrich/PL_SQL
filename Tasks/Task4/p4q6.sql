select distinct em.ename as "Employee",em.empno as "Emp#", mgrs.ename as "Manager", mgrs.mgr as "Mgr#"
from emp em, emp mgrs
where mgrs.empno=em.mgr
