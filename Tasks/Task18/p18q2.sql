declare
v_empno emp.empno%TYPE;
v_empno_sal emp.sal%TYPE;
begin
v_empno:=7499;
select distinct sal 
into v_empno_sal 
from emp 
where empno=v_empno;

IF v_empno_sal < 1000 then 
  update emp
  set comm=sal*0.1
  where empno=v_empno;
elsif v_empno_sal >= 1000 and v_empno_sal <= 1500 then
  update emp
  set comm=sal*0.15
  where empno=v_empno;
elsif v_empno_sal > 1500 then
  update emp
  set comm=sal*0.2
  where empno=v_empno;
else
  update emp
  set comm=0
  where empno=v_empno; 
END IF;
END;
/
commit;
select * from emp
order by empno;



