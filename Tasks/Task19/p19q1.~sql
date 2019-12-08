declare 
  TYPE emp_name_type is table of emp.ename%type
       index by binary_integer;
  TYPE emp_sal_type is table of emp.sal%type
       index by binary_integer;       
             
emp_name emp_name_type;
emp_sal emp_sal_type;

begin

  select ename 
  BULK COLLECT INTO emp_name
  from emp;
  
  select sal
  BULK COLLECT INTO emp_sal
  from emp;
  
  for i in 1 .. emp_sal.count loop
      DBMS_OUTPUT.PUT_LINE(emp_name(i)  || ' '  ||emp_sal(i));
  end loop; 

  for i in 1 .. emp_sal.count loop    
   insert into top_dogs(name, salary)   
        values (emp_name(i), emp_sal(i));
   commit;
  end loop;
end;
/
