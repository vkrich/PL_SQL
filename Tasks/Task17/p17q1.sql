declare
  v_max_number dept.deptno%TYPE;
  BEGIN
    select MAX(dept.deptno)
    into v_max_number
    from dept;
    
    v_max_number := v_max_number+1;
    
    insert into dept (deptno, dname, loc)
    values (v_max_number,'Education',NULL);
    
    v_max_number := v_max_number+1;
    
    insert into dept (deptno, dname, loc)
    values (v_max_number,'Education',NULL);     
    
  END;
/ 
select * from dept;
commit;
  
