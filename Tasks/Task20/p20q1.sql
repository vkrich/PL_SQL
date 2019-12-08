delete from top_dogs;
commit;

declare
v_n number(7):=3;
v_prev_sal emp.sal%TYPE := 9999;
cursor c1 is 
       select distinct ename, sal
       from emp
       order by sal desc;
type rec_t is record 
     (ename emp.ename%TYPE,
      sal emp.sal%type);
rec rec_t;           
        
begin
  open c1;
  while v_n>0 loop    
    fetch c1 into rec;
     
      if rec.sal = v_prev_sal then
          v_n:=v_n+1;         
      end if;     
    
      if rec.sal is not null then                    
          insert into top_dogs(name,salary)
          values (rec.ename, rec.sal);
          commit;          
          v_prev_sal:=rec.sal;     
          v_n:=v_n-1;
      end if; 
    
  end loop;
 
  close c1;
  
end;
/  
select * from top_dogs;

