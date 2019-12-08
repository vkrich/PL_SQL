declare
  v_del_dept dept.dname%TYPE := 'Education';
  cursor c1 is
         select dname
         from dept
         where dname=v_del_dept;
  BEGIN
    open c1;    
    fetch c1 into v_del_dept;
    if c1%notfound then
      raise_application_error(-20003, 'Dept name not found');
    end if;
    
    
    delete from dept 
    where dname=v_del_dept;
    END;
/ 
select * from dept;
commit; 
