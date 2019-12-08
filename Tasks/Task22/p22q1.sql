delete from top_dogs;
commit;
declare 
v_sal emp.sal%TYPE := 800;
v_name emp.ename%TYPE;
v_more number(1):=0;
cursor c1 is
       select distinct ename, sal
       from emp
       where sal=v_sal;
begin
  open c1;
  
    loop
      fetch c1 into v_name, v_sal;
      
     if c1%notfound and v_more=0 then
      raise_application_error(-20001, 'Salary not found');
     end if;
    
      exit when c1%notfound;
     if v_more>0 then
       raise_application_error(-20002, 'More then one person with same salary');
     end if;
    
    insert into top_dogs(name, salary)
    values (v_name,v_sal);
    
    commit;    
    v_more:=v_more+1;
    
    end loop;
  close c1;
  
end;
/
select * from top_dogs;
