declare 
v_sal emp.sal%TYPE:=0;
v_stars emp.stars%TYPE :=' ';
v_cur emp.emp_id%TYPE:=1;
begin
  while v_cur<=29 loop  
           
        select distinct sal 
        into v_sal
        from emp
        where emp_id=v_cur;     
                 
            v_sal:= ROUND(v_sal,-2);
            
            while v_sal>0 loop
                       
              update emp
              set stars=concat(stars,'*')
              where emp_id=v_cur;
              
              v_sal := v_sal-100;          
            end loop;          
    v_cur:=v_cur+1;
   
  end loop;  
end;
/

commit;

select * from emp;
