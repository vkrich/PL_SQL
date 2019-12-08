delete from top_dogs;
commit;
declare 
G_message varchar2(50);
v_sal emp.sal%TYPE := 2900;
v_name emp.ename%TYPE;
v_more number(1):=0;
cursor c1 is
       select distinct ename, sal
       from emp
       where sal<=v_sal+100 and sal>=v_sal-100;
begin
  open c1;
  
    loop
      fetch c1 into v_name, v_sal;
            
       if c1%notfound and v_more=0 then
        raise_application_error(-20001, 'Salary not found');
       end if;    
      exit when c1%notfound;
            
     if v_more>0 then
      G_message := 'More then one person with same salary, at least 2';
     end if;
    
    insert into top_dogs(name, salary)
    values (v_name,v_sal);
    
    commit;    
    v_more:=v_more+1;
    
    end loop;
    
    EXCEPTION
      when too_many_rows then
        raise_application_error(-20003, 'Too many rows');
      when others then
        raise_application_error(-20004, 'Other error');
      
  close c1;
  
end;
/
select * from top_dogs;
